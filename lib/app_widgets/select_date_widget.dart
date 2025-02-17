// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectDateWidget extends StatelessWidget {
  final DateTime? value;
  final DateTime firstDate;
  final DateTime lastDate;
  final Function(DateTime) onValueChange;

  const SelectDateWidget({
    super.key,
    required this.value,
    required this.firstDate,
    required this.lastDate,
    required this.onValueChange,
  });

  Future<void> _selectDate(BuildContext context) async {
    DateTime today = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: value ?? today,
      firstDate: firstDate,
      lastDate: lastDate, // Booking for next 30 days
    );

    if (picked != null && picked != value) {
      onValueChange(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectDate(context),
      child: InputDecorator(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.calendar_today),
        ),
        child: Text(
          value == null
              ? 'Choose Date'
              : DateFormat('dd-MM-yyyy').format(value!),
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
