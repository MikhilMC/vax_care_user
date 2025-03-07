import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:vax_care_user/app_blocs/bloc/children_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/view/book_vaccine_screen.dart';
import 'package:vax_care_user/app_models/child.dart';
import 'package:vax_care_user/app_widgets/children_dropdown.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/empty_list.dart';

class VaccineBookingWidget extends StatefulWidget {
  const VaccineBookingWidget({super.key});

  @override
  State<VaccineBookingWidget> createState() => _VaccineBookingWidgetState();
}

class _VaccineBookingWidgetState extends State<VaccineBookingWidget> {
  Child? _selectedChild;
  // String? selectedChild;
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

  @override
  void initState() {
    super.initState();
    context.read<ChildrenBloc>().add(ChildrenEvent.childrenFetched());
    _selectedChild = null;
  }

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
    return BlocBuilder<ChildrenBloc, ChildrenState>(
      builder: (context, state) {
        if (state is ChildrenError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is ChildrenEmpty) {
          return EmptyList(
            message: "There are no children available",
          );
        }

        if (state is! ChildrenSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            ),
          );
        }

        final List<Child> children = state.children
            .map((child) => Child(
                  childId: child.id,
                  parentId: child.parent,
                  name: child.name,
                  birthdate: child.birthdate,
                  bloodGroup: child.bloodGroup,
                  photoUrl: "${AppUrls.baseUrl}/${child.photo}",
                  height: child.height,
                  weight: child.weight,
                  gender: child.gender,
                ))
            .toList();

        // Initialize _selectedChild if it's null and children list is not empty
        if (_selectedChild == null && children.isNotEmpty) {
          _selectedChild = children.first;
        } else if (_selectedChild != null &&
            !children
                .any((child) => child.childId == _selectedChild!.childId)) {
          _selectedChild = null; // Reset if it's not in the list
        }

        return Padding(
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
              ChildrenDropdown(
                selectedChild: _selectedChild ??
                    (children.isNotEmpty ? children.first : null),
                children: children,
                onSelectingChildren: (child) {
                  setState(() {
                    _selectedChild = child;
                  });
                },
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
                    if (_selectedChild == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please select a child'),
                        ),
                      );
                      return;
                    }
                    setState(() {
                      showHospitals = true;
                    });
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
                                    childId: _selectedChild!
                                        .childId, // Use _selectedChild
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
        );
      },
    );
  }
}
