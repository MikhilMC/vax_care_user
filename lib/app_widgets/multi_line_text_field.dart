// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MultilineTextField extends StatelessWidget {
  const MultilineTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.hintText,
    this.validatorFunction,
    this.icon,
  });

  final String label;
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validatorFunction;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: icon,
      ),
      validator: validatorFunction,
    );
  }
}
