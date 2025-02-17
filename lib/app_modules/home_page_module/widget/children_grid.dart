import 'package:flutter/material.dart';
import 'package:vax_care_user/app_modules/home_page_module/model/child.dart';
import 'package:vax_care_user/app_modules/home_page_module/widget/child_card.dart';

class ChildrenGrid extends StatelessWidget {
  final List<Child> children;

  const ChildrenGrid({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
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
  }
}
