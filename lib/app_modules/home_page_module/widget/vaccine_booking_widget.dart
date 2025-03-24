import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vax_care_user/app_blocs/bloc/children_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_modules/book_vaccine_module/view/book_vaccine_screen.dart';
import 'package:vax_care_user/app_models/child.dart';
import 'package:vax_care_user/app_modules/home_page_module/bloc/healthcare_provider_list/healthcare_provider_list_bloc.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/children_dropdown.dart';
import 'package:vax_care_user/app_widgets/custom_button.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/empty_list.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';

class VaccineBookingWidget extends StatefulWidget {
  const VaccineBookingWidget({super.key});

  @override
  State<VaccineBookingWidget> createState() => _VaccineBookingWidgetState();
}

class _VaccineBookingWidgetState extends State<VaccineBookingWidget> {
  final TextEditingController _latitudeController = TextEditingController();
  final TextEditingController _longitudeController = TextEditingController();
  Child? _selectedChild;
  bool showHospitals = false;

  @override
  void dispose() {
    super.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
  }

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
        AppHelpers.showErrorDialogue(
          context,
          "Location services are disabled.",
        );
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied && mounted) {
          AppHelpers.showErrorDialogue(
            context,
            "Location permissions are denied.",
          );
          return;
        }
      }

      if (permission == LocationPermission.deniedForever && mounted) {
        AppHelpers.showErrorDialogue(
          context,
          "Location permissions are permanently denied.",
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

      setState(() {
        _latitudeController.text = position.latitude.toString();
        _longitudeController.text = position.longitude.toString();
      });
    } catch (e) {
      if (mounted) {
        AppHelpers.showErrorDialogue(
          context,
          "Error getting location: $e",
        );
      }
    }
  }

  void _findHospitals() {
    if (_latitudeController.text.isNotEmpty &&
        _longitudeController.text.isNotEmpty) {
      if (_selectedChild != null) {
        context
            .read<HealthcareProviderListBloc>()
            .add(HealthcareProviderListEvent.healthcareProviderListFetched(
              double.parse(_latitudeController.text.trim()),
              double.parse(_longitudeController.text.trim()),
              _selectedChild!.childId,
            ));
        setState(() {
          showHospitals = true;
        });
      } else {
        AppHelpers.showErrorDialogue(
          context,
          "Please select a child",
        );
        setState(() {
          showHospitals = false;
        });
      }
    } else {
      AppHelpers.showErrorDialogue(
        context,
        "Please add location",
      );
      setState(() {
        showHospitals = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
          child: CustomScrollView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            slivers: [
              SliverToBoxAdapter(
                child: const Text(
                  'Select Child:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 8)),
              SliverToBoxAdapter(
                child: ChildrenDropdown(
                  selectedChild: _selectedChild ??
                      (children.isNotEmpty ? children.first : null),
                  children: children,
                  onSelectingChildren: (child) {
                    setState(() {
                      _selectedChild = child;
                    });
                  },
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.375,
                      child: NormalTextField(
                        labelText: 'Latitude',
                        hintText: 'Latitude',
                        isDisabled: true,
                        textEditingController: _latitudeController,
                        validatorFunction: (_) {
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.02,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.375,
                      child: NormalTextField(
                        labelText: 'Longitude',
                        hintText: 'Longitude',
                        isDisabled: true,
                        textEditingController: _longitudeController,
                        validatorFunction: (_) {
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.013,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.135,
                      height: screenSize.height * 0.06,
                      child: IconButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: AppColors.primaryColor,
                        ),
                        icon: Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        onPressed: _getCurrentLocation,
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: CustomButton(
                  buttonWidth: double.infinity,
                  backgroundColor: AppColors.primaryColor,
                  textColor: Colors.white,
                  labelText: "Find Hospitals",
                  onClick: _findHospitals,
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),
              // Replace this BlocBuilder:
              if (showHospitals)
                BlocBuilder<HealthcareProviderListBloc,
                    HealthcareProviderListState>(
                  builder: (context, state) {
                    if (state is HealthcareProviderListError) {
                      return SliverToBoxAdapter(
                        child: CustomErrorWidget(
                          errorMessage: state.errorMessage,
                        ),
                      );
                    }

                    if (state is HealthcareProviderListEmpty) {
                      return SliverToBoxAdapter(
                        child: EmptyList(
                          message:
                              "There are no healthcare providers available",
                        ),
                      );
                    }

                    if (state is! HealthcareProviderListSuccess) {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      );
                    }

                    final healthcareProviders = state.healthcareProvider;

                    return SliverList.list(children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Available Hospitals:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ...healthcareProviders.map((healthcareProvider) => Card(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              leading: const Icon(
                                Icons.local_hospital,
                                color: Colors.blue,
                              ),
                              title: Text(healthcareProvider.name),
                              subtitle: Text(healthcareProvider.address),
                              trailing: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BookVaccineScreen(
                                        childId: _selectedChild!.childId,
                                        healthProviderId: healthcareProvider.id,
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Book'),
                              ),
                            ),
                          )),
                    ]);
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
