import 'package:flutter/material.dart';
import 'package:vax_care_user/app_models/child.dart';

class ChildrenDropdown extends StatelessWidget {
  final Child? selectedChild; // Allow selectedChild to be nullable
  final List<Child> children;
  final Function(Child?)? onSelectingChildren;
  const ChildrenDropdown({
    super.key,
    required this.selectedChild,
    required this.children,
    this.onSelectingChildren,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Child>(
      value: selectedChild, // This can be null initially
      items: children
          .map((child) {
            return DropdownMenuItem<Child>(
              value: child,
              child: Text(child.name),
            );
          })
          .toSet()
          .toList(),
      onChanged: onSelectingChildren,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Choose a child',
      ),
      validator: (value) {
        if (value == null) {
          return 'Please select a child';
        }
        return null;
      },
    );
  }
}
