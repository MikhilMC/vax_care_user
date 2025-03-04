// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GenderDropdown extends StatelessWidget {
  final String selectedGender;
  final Function(String?)? onSelectingGender;
  const GenderDropdown({
    super.key,
    required this.selectedGender,
    this.onSelectingGender,
  });

  static const List<String> genders = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedGender.isNotEmpty ? selectedGender : null,
      items: genders.map((gender) {
        return DropdownMenuItem(
          value: gender,
          child: Text(gender),
        );
      }).toList(),
      onChanged: onSelectingGender,
      decoration: InputDecoration(
        labelText: "Gender",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a gender';
        }
        return null;
      },
    );
  }
}
