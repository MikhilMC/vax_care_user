import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vax_care_user/app_blocs/children_bloc/children_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_models/child.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/child_card.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/empty_list.dart';

class ChildrenGrid extends StatefulWidget {
  // final List<Child> children;

  const ChildrenGrid({super.key});

  @override
  State<ChildrenGrid> createState() => _ChildrenGridState();
}

class _ChildrenGridState extends State<ChildrenGrid> {
  @override
  void initState() {
    super.initState();
    context.read<ChildrenBloc>().add(ChildrenEvent.childrenFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChildrenBloc, ChildrenState>(
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

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Your children",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 children per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7, // Adjust card proportions
                ),
                itemCount: children.length,
                itemBuilder: (context, index) {
                  final child = children[index];
                  return ChildCard(child: child);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
