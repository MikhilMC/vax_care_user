import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/view/book_vaccine_screen.dart';

class VaccineBookingWidget extends StatefulWidget {
  const VaccineBookingWidget({super.key});

  @override
  State<VaccineBookingWidget> createState() => _VaccineBookingWidgetState();
}

class _VaccineBookingWidgetState extends State<VaccineBookingWidget> {
  String? selectedChild;
  bool showHospitals = false;
  String latitude = "";
  String longitude = "";
  String fullAddress = "";

  final List<String> children = ['John', 'Emma', 'Ava', 'Liam'];

  final List<Map<String, String>> hospitals = [
    {'name': 'City Hospital', 'location': 'Downtown'},
    {'name': 'GreenCare Clinic', 'location': 'Suburbs'},
    {'name': 'HealthPlus Center', 'location': 'Uptown'},
  ];

  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Location services are disabled.'),
          ),
        );
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied && mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Location permissions are denied.'),
            ),
          );
          return;
        }
      }

      if (permission == LocationPermission.deniedForever && mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Location permissions are permanently denied.'),
          ),
        );
        return;
      }

      // ✅ FIXED: Use LocationSettings instead of desiredAccuracy
      LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      );

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        String address =
            "${place.street}, ${place.subLocality}, ${place.locality}, ${place.administrativeArea}, ${place.country}";

        setState(() {
          latitude = position.latitude.toString();
          longitude = position.longitude.toString();
          fullAddress = address;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error getting location: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Child:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: selectedChild,
              items: children.map((child) {
                return DropdownMenuItem(
                  value: child,
                  child: Text(child),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedChild = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Choose a child',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _getCurrentLocation,
              icon: const Icon(Icons.my_location),
              label: const Text('Get Current Location'),
            ),
            const SizedBox(height: 16),

            // 📌 Multiline Full Address Field
            TextFormField(
              readOnly: true,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Full Address',
                border: OutlineInputBorder(),
              ),
              controller: TextEditingController(text: fullAddress),
            ),
            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedChild != null) {
                    setState(() {
                      showHospitals = true;
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please select a child'),
                      ),
                    );
                  }
                },
                child: const Text('Find Hospitals'),
              ),
            ),
            if (showHospitals) ...[
              const SizedBox(height: 20),
              const Text(
                'Available Hospitals:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: hospitals.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: const Icon(
                          Icons.local_hospital,
                          color: Colors.blue,
                        ),
                        title: Text(hospitals[index]['name']!),
                        subtitle: Text(hospitals[index]['location']!),
                        trailing: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookVaccineScreen(
                                  childId: 2,
                                  healthProviderId: 2,
                                ),
                              ),
                            );
                          },
                          child: const Text('Book'),
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
