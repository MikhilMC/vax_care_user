import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vax_care_user/app_blocs/bloc/children_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_models/child.dart';
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
  String? selectedChild;
  bool showHistory = false;

  final List<String> children = ['John', 'Emma', 'Ava', 'Liam'];

  // Sample vaccine history based on UNICEF schedule
  final Map<String, List<Map<String, String>>> vaccineHistory = {
    'John': [
      {'vaccine': 'BCG', 'age': 'At birth', 'status': 'Completed'},
      {'vaccine': 'Hepatitis B', 'age': 'At birth', 'status': 'Completed'},
      {'vaccine': 'DTP', 'age': '6 weeks', 'status': 'Pending'},
    ],
    'Emma': [
      {'vaccine': 'Polio', 'age': '6 weeks', 'status': 'Completed'},
      {'vaccine': 'DTP', 'age': '10 weeks', 'status': 'Pending'},
    ],
    'Ava': [
      {'vaccine': 'Measles', 'age': '9 months', 'status': 'Completed'},
    ],
    'Liam': [
      {'vaccine': 'Rotavirus', 'age': '6 weeks', 'status': 'Completed'},
    ],
  };

  @override
  void initState() {
    super.initState();
    context.read<ChildrenBloc>().add(ChildrenEvent.childrenFetched());
    _selectedChild = null;
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select Child:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                ChildrenDropdown(
                  selectedChild: _selectedChild ??
                      (children.isNotEmpty ? children.first : null),
                  children: children,
                  onSelectingChildren: (child) {
                    setState(() {
                      _selectedChild = child;
                    });
                  },
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (selectedChild != null) {
                        setState(() {
                          showHistory = true;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Please select a child')),
                        );
                      }
                    },
                    child: const Text('Get History'),
                  ),
                ),
                const SizedBox(height: 16),

                // Display vaccine history only when a child is selected
                if (showHistory && selectedChild != null) ...[
                  const Text(
                    'Vaccine History:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: vaccineHistory[selectedChild]!.length,
                      itemBuilder: (context, index) {
                        var vaccine = vaccineHistory[selectedChild]![index];
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            leading:
                                const Icon(Icons.vaccines, color: Colors.blue),
                            title: Text(vaccine['vaccine']!),
                            subtitle: Text('Age: ${vaccine['age']}'),
                            trailing: Text(
                              vaccine['status']!,
                              style: TextStyle(
                                color: vaccine['status'] == 'Completed'
                                    ? Colors.green
                                    : Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
