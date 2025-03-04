// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OptionsDropdown extends StatelessWidget {
  final bool havingSpecificHealthCondition;
  final Function(String?)? onSelectingOption;
  const OptionsDropdown({
    super.key,
    required this.havingSpecificHealthCondition,
    this.onSelectingOption,
  });

  static const List<String> options = ["No", "Yes"];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: havingSpecificHealthCondition ? "Yes" : "No",
      items: options.map((option) {
        return DropdownMenuItem(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: onSelectingOption,
      decoration: InputDecoration(
        labelText: "Has Specific Health Condition?",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select an option';
        }
        return null;
      },
    );
  }
}
