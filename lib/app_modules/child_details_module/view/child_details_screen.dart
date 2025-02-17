import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vax_care_user/app_modules/child_details_module/widget/detail_card.dart';

class ChildDetailsScreen extends StatefulWidget {
  final int childId;

  const ChildDetailsScreen({
    super.key,
    required this.childId,
  });

  @override
  State<ChildDetailsScreen> createState() => _ChildDetailsScreenState();
}

class _ChildDetailsScreenState extends State<ChildDetailsScreen> {
  // Sample child data; in a real application, this would come from a database or API
  final Map<int, Map<String, dynamic>> childData = {
    1: {
      'name': 'Ava Smith',
      'birthDate': DateTime(2020, 5, 15),
      'bloodGroup': 'A+',
      'photoUrl':
          'assets/images/ava_smith.jpg', // Ensure this image is in your assets
      'gender': 'Female',
      'height': 95.0, // in cm
      'weight': 14.5, // in kg
      'medicalConditions': 'None',
    },
    // Add more child data as needed
  };

  // Sample vaccination schedule; in a real application, this would be more dynamic
  final List<Map<String, dynamic>> vaccinationSchedule = [
    {
      'vaccine': 'Measles & Rubella (MR) - 1',
      'dueAge': Duration(days: 270), // 9 months
    },
    {
      'vaccine': 'Diphtheria, Pertussis & Tetanus (DPT) - Booster 1',
      'dueAge': Duration(days: 540), // 18 months
    },
    // Add more vaccinations as needed
  ];

  String _calculateNextVaccinationStatus(DateTime birthDate) {
    final today = DateTime.now();
    for (var vaccine in vaccinationSchedule) {
      final dueDate = birthDate.add(vaccine['dueAge']);
      final difference = dueDate.difference(today).inDays;
      if (difference > 0) {
        if (difference <= 14) {
          return 'Next vaccination (${vaccine['vaccine']}) is due in $difference days.';
        } else {
          return 'Next vaccination (${vaccine['vaccine']}) is due on ${DateFormat('dd MMM yyyy').format(dueDate)}.';
        }
      }
    }
    return 'All vaccinations are up to date.';
  }

  @override
  Widget build(BuildContext context) {
    final child = childData[widget.childId];

    if (child == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Child Details')),
        body: const Center(child: Text('Child not found')),
      );
    }

    final nextVaccinationStatus =
        _calculateNextVaccinationStatus(child['birthDate']);

    return Scaffold(
      appBar: AppBar(title: const Text('Child Details')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(child['photoUrl']),
            ),
            const SizedBox(height: 20),

            // Child Details
            DetailCard(icon: Icons.person, title: 'Name', value: child['name']),
            DetailCard(
                icon: Icons.cake,
                title: 'Birth Date',
                value: DateFormat('dd MMM yyyy').format(child['birthDate'])),
            DetailCard(
                icon: Icons.bloodtype,
                title: 'Blood Group',
                value: child['bloodGroup']),
            DetailCard(
                icon: Icons.transgender,
                title: 'Gender',
                value: child['gender']),
            DetailCard(
                icon: Icons.height,
                title: 'Height',
                value: '${child['height']} cm'),
            DetailCard(
                icon: Icons.monitor_weight,
                title: 'Weight',
                value: '${child['weight']} kg'),
            if (child['medicalConditions'] != null &&
                child['medicalConditions'].isNotEmpty)
              DetailCard(
                  icon: Icons.medical_services,
                  title: 'Medical Conditions',
                  value: child['medicalConditions']),

            const SizedBox(height: 20),

            // Next Vaccination Status
            Card(
              color: Colors.blue[50],
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.vaccines, color: Colors.blue),
                title: const Text('Next Vaccination',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(nextVaccinationStatus),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
