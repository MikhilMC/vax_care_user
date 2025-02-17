import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_widgets/select_date_widget.dart';

class BookVaccineScreen extends StatefulWidget {
  final int childId;
  final int healthProviderId;

  const BookVaccineScreen({
    super.key,
    required this.childId,
    required this.healthProviderId,
  });

  @override
  State<BookVaccineScreen> createState() => _BookVaccineScreenState();
}

class _BookVaccineScreenState extends State<BookVaccineScreen> {
  DateTime? _selectedDate;
  String? _selectedTimeSlot;

  List<String> generateTimeSlots() {
    List<String> slots = [];
    for (int hour = 8; hour < 16; hour++) {
      slots.add(
          '${hour.toString().padLeft(2, '0')}:00 - ${hour.toString().padLeft(2, '0')}:30');
      slots.add(
          '${hour.toString().padLeft(2, '0')}:30 - ${(hour + 1).toString().padLeft(2, '0')}:00');
    }
    return slots;
  }

  void _bookVaccine() {
    if (_selectedDate != null && _selectedTimeSlot != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Booking Confirmed for ${DateFormat('dd-MM-yyyy').format(_selectedDate!)} at $_selectedTimeSlot',
          ),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select date and time slot'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> timeSlots = generateTimeSlots();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Vaccine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Vaccination Date:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            SelectDateWidget(
              value: _selectedDate,
              onValueChange: (value) {
                setState(() {
                  _selectedDate = value;
                });
              },
              firstDate: DateTime.now(),
              lastDate: DateTime.now()
                  .add(const Duration(days: 30)), // Booking for next 30 days
            ),
            const SizedBox(height: 16),
            const Text(
              'Select Time Slot:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                itemCount: timeSlots.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Two columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2, // Adjust height
                ),
                itemBuilder: (context, index) {
                  String slot = timeSlots[index];
                  bool isSelected = _selectedTimeSlot == slot;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTimeSlot = slot;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.primaryColor
                            : AppColors.tertiaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.primaryColor),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        slot,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                onPressed: _bookVaccine,
                child: const Text(
                  'Confirm Booking',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
