// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NormalTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? Function(String?)? validatorFunction;
  final String labelText;
  final String hintText;
  final Icon? textFieldIcon;
  final TextInputType? textInputType;
  final bool? isDisabled;
  const NormalTextField({
    super.key,
    required this.textEditingController,
    required this.validatorFunction,
    required this.labelText,
    required this.hintText,
    this.textFieldIcon,
    this.textInputType,
    this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:
          textEditingController, // This automatically manages the text state
      validator: validatorFunction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: textFieldIcon,
        border: OutlineInputBorder(),
      ),
      keyboardType: textInputType ?? TextInputType.text,
      readOnly: isDisabled ?? false,
    );
  }
}
