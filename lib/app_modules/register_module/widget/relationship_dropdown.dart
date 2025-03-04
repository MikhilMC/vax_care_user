// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RelationshipDropdown extends StatelessWidget {
  final String selectedRelationship;
  final ValueChanged<String?>? onSelect;
  const RelationshipDropdown({
    super.key,
    required this.selectedRelationship,
    required this.onSelect,
  });

  static const List<String> _relationships = ["Mother", "Father", "Other"];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedRelationship.isNotEmpty ? selectedRelationship : null,
      items: _relationships.map((option) {
        return DropdownMenuItem(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: onSelect,
      decoration: InputDecoration(
        labelText: "Relationship with the child",
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
