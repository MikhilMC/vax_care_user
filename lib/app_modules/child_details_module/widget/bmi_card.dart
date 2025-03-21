import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  final double height; // in centimeters
  final double weight; // in kilograms
  final DateTime birthdate;

  const BMICard({
    super.key,
    required this.height,
    required this.weight,
    required this.birthdate,
  });

  double calculateBMI() {
    // BMI formula: weight (kg) / (height (m) * height (m))
    return weight / ((height / 100) * (height / 100));
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal Weight';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    final bmi = calculateBMI();
    final bmiCategory = getBMICategory(bmi);

    return Card(
      color: Colors.orange[50],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.monitor_weight, color: Colors.orange),
        title: const Text('BMI', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${bmi.toStringAsFixed(2)} ($bmiCategory)'),
      ),
    );
  }
}
