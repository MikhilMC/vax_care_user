import 'package:flutter/material.dart';

class VaccineHistoryScreen extends StatefulWidget {
  const VaccineHistoryScreen({super.key});

  @override
  State<VaccineHistoryScreen> createState() => _VaccineHistoryScreenState();
}

class _VaccineHistoryScreenState extends State<VaccineHistoryScreen> {
  String? selectedChild;
  bool showHistory = false;

  final List<String> children = ['John', 'Emma', 'Ava', 'Liam'];

  // Sample vaccine history based on UNICEF schedule
  final Map<String, List<Map<String, String>>> vaccineHistory = {
    'John': [
      {'vaccine': 'BCG', 'age': 'At birth', 'status': 'Completed'},
      {'vaccine': 'Hepatitis B', 'age': 'At birth', 'status': 'Completed'},
      {'vaccine': 'DTP', 'age': '6 weeks', 'status': 'Pending'},
    ],
    'Emma': [
      {'vaccine': 'Polio', 'age': '6 weeks', 'status': 'Completed'},
      {'vaccine': 'DTP', 'age': '10 weeks', 'status': 'Pending'},
    ],
    'Ava': [
      {'vaccine': 'Measles', 'age': '9 months', 'status': 'Completed'},
    ],
    'Liam': [
      {'vaccine': 'Rotavirus', 'age': '6 weeks', 'status': 'Completed'},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vaccine History')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Child:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedChild,
              items: children.map((child) {
                return DropdownMenuItem(value: child, child: Text(child));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedChild = value;
                  showHistory =
                      false; // Reset history when selecting a new child
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Choose a child',
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedChild != null) {
                    setState(() {
                      showHistory = true;
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select a child')),
                    );
                  }
                },
                child: const Text('Get History'),
              ),
            ),
            const SizedBox(height: 16),

            // Display vaccine history only when a child is selected
            if (showHistory && selectedChild != null) ...[
              const Text(
                'Vaccine History:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: vaccineHistory[selectedChild]!.length,
                  itemBuilder: (context, index) {
                    var vaccine = vaccineHistory[selectedChild]![index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: const Icon(Icons.vaccines, color: Colors.blue),
                        title: Text(vaccine['vaccine']!),
                        subtitle: Text('Age: ${vaccine['age']}'),
                        trailing: Text(
                          vaccine['status']!,
                          style: TextStyle(
                            color: vaccine['status'] == 'Completed'
                                ? Colors.green
                                : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
