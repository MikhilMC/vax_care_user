// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String text;
  const InfoChip({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text, style: TextStyle(fontSize: 15)),
      avatar: Icon(icon, size: 16),
      backgroundColor: Colors.blue[50],
    );
  }
}
