import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vax_care_user/app_blocs/bloc/children_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_models/child.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/bloc/child_vaccination_history_bloc.dart';
import 'package:vax_care_user/app_modules/vaccine_history_module/widget/child_vaccine_history_card.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/children_dropdown.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/empty_list.dart';

class VaccineHistoryScreen extends StatefulWidget {
  const VaccineHistoryScreen({super.key});

  @override
  State<VaccineHistoryScreen> createState() => _VaccineHistoryScreenState();
}

class _VaccineHistoryScreenState extends State<VaccineHistoryScreen> {
  Child? _selectedChild;
  bool _showHistory = false;

  @override
  void initState() {
    super.initState();
    context.read<ChildrenBloc>().add(ChildrenEvent.childrenFetched());
    _selectedChild = null;
  }

  void _getChildVaccineHistory() {
    if (_selectedChild != null) {
      setState(() {
        _showHistory = true;
      });

      context
          .read<ChildVaccinationHistoryBloc>()
          .add(ChildVaccinationHistoryEvent.childVaccinationHistoryFetched(
            _selectedChild!.childId,
          ));
    } else {
      AppHelpers.showErrorDialogue(
        context,
        "Please select a child",
      );
      setState(() {
        _showHistory = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vaccine History')),
      body: BlocBuilder<ChildrenBloc, ChildrenState>(
        builder: (context, state) {
          if (state is ChildrenError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is ChildrenEmpty) {
            return EmptyList(
              message: "There are no children available",
            );
          }

          if (state is! ChildrenSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          final List<Child> children = state.children
              .map((child) => Child(
                    childId: child.id,
                    parentId: child.parent,
                    name: child.name,
                    birthdate: child.birthdate,
                    bloodGroup: child.bloodGroup,
                    photoUrl: "${AppUrls.baseUrl}/${child.photo}",
                    height: child.height,
                    weight: child.weight,
                    gender: child.gender,
                  ))
              .toList();

          // Initialize _selectedChild if it's null and children list is not empty
          if (_selectedChild == null && children.isNotEmpty) {
            _selectedChild = children.first;
          } else if (_selectedChild != null &&
              !children
                  .any((child) => child.childId == _selectedChild!.childId)) {
            _selectedChild = null; // Reset if it's not in the list
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: const Text(
                    'Select Child:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 8)),
                SliverToBoxAdapter(
                  child: ChildrenDropdown(
                    selectedChild: _selectedChild ??
                        (children.isNotEmpty ? children.first : null),
                    children: children,
                    onSelectingChildren: (child) {
                      setState(() {
                        _selectedChild = child;
                        _showHistory = false;
                      });
                    },
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 16)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _getChildVaccineHistory,
                      child: const Text('Get History'),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 16)),

                // Display vaccine history only when a child is selected
                if (_showHistory && _selectedChild != null) ...[
                  SliverToBoxAdapter(
                    child: Text(
                      'Vaccine History: ${_selectedChild!.name}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(child: const SizedBox(height: 10)),
                  BlocBuilder<ChildVaccinationHistoryBloc,
                      ChildVaccinationHistoryState>(
                    builder: (context, state) {
                      if (state is ChildVaccinationHistoryError) {
                        return SliverToBoxAdapter(
                          child: CustomErrorWidget(
                            errorMessage: state.errorMessage,
                          ),
                        );
                      }

                      if (state is! ChildVaccinationHistorySuccess) {
                        return SliverToBoxAdapter(
                          child: Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        );
                      }

                      final vaccinationHistory = state.vaccinationHistory;
                      return SliverList.builder(
                        itemCount: vaccinationHistory.ageGroups.length,
                        itemBuilder: (context, index) {
                          var ageGroup = vaccinationHistory.ageGroups[index];
                          return ChildVaccineHistoryCard(
                            ageGroup: ageGroup,
                          );
                        },
                      );
                    },
                  ),
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
