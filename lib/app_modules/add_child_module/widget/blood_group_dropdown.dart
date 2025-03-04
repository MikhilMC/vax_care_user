// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BloodGroupDropdown extends StatelessWidget {
  final String selectedBloodGroup;
  final Function(String?)? onSelectingBloodGroup;
  const BloodGroupDropdown({
    super.key,
    required this.selectedBloodGroup,
    this.onSelectingBloodGroup,
  });

  static const List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-'
  ]; // ✅ List of blood groups

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedBloodGroup.isNotEmpty ? selectedBloodGroup : null,
      items: bloodGroups.map((group) {
        return DropdownMenuItem(
          value: group,
          child: Text(group),
        );
      }).toList(),
      onChanged: onSelectingBloodGroup,
      decoration: InputDecoration(
        labelText: "Blood Group",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a blood group';
        }
        return null;
      },
    );
  }
}
