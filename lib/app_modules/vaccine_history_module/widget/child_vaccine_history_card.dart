// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:vax_care_user/app_modules/vaccine_history_module/model/vaccine_history_model.dart';

class ChildVaccineHistoryCard extends StatelessWidget {
  const ChildVaccineHistoryCard({
    super.key,
    required this.ageGroup,
  });

  final AgeGroup ageGroup;

  Color _getColor(String status) {
    switch (status) {
      case "Completed":
        return Colors.green;
      case "Upcoming":
        return Colors.orange;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.vaccines, color: Colors.blue),
        title: Text(ageGroup.ageGroup),
        trailing: Text(
          ageGroup.status,
          style: TextStyle(
            color: _getColor(ageGroup.status),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
