import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/model/slot_model/slot_model.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/widget/slots_grid.dart';
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
  SlotModel? _selectedTimeSlot;

  @override
  void initState() {
    super.initState();
    // context.read();
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
            SlotsGrid(
              healthProviderId: widget.healthProviderId,
              selectedSlot: _selectedTimeSlot,
              onSelectingSlot: (p0) {
                setState(() {
                  _selectedTimeSlot = p0;
                });
              },
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
