// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double buttonWidth;
  final Color backgroundColor;
  final Color textColor;
  final String labelText;
  final VoidCallback onClick;
  const CustomButton({
    super.key,
    required this.buttonWidth,
    required this.backgroundColor,
    required this.textColor,
    required this.labelText,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: backgroundColor,
          elevation: 2,
        ),
        onPressed: onClick,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            labelText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
