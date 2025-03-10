// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/add_child_module/bloc/add_child_bloc.dart';
import 'package:vax_care_user/app_modules/add_child_module/class/child_details.dart';
import 'package:vax_care_user/app_modules/add_child_module/widget/blood_group_dropdown.dart';
import 'package:vax_care_user/app_modules/add_child_module/widget/gender_dropdown.dart';
import 'package:vax_care_user/app_modules/add_child_module/widget/options_dropdown.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_modules/login_module/view/login_screen.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/custom_button.dart';
import 'package:vax_care_user/app_widgets/multi_line_text_field.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';
import 'package:vax_care_user/app_widgets/overlay_loader_widget.dart';
import 'package:vax_care_user/app_widgets/select_date_widget.dart';

class AddChildScreen extends StatefulWidget {
  final bool isLoggedIn;
  final int parentId;
  const AddChildScreen({
    super.key,
    required this.isLoggedIn,
    required this.parentId,
  });

  @override
  State<AddChildScreen> createState() => _AddChildScreenState();
}

class _AddChildScreenState extends State<AddChildScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _childNameController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _medicalConditionController =
      TextEditingController();

  DateTime? _selectedBirthDate;
  String? _selectedBloodGroup; // ✅ Store selected blood group
  bool _isImageSelected = false;
  File? _imageFile;
  String? _selectedGender;
  bool _havingSpecificHealthCondition = false;

  @override
  void dispose() {
    _childNameController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _medicalConditionController.dispose();
    super.dispose();
  }

  Future<void> _pickImageFromGallary() async {
    try {
      final XFile? pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedImage != null) {
        setState(() {
          _imageFile = File(pickedImage.path);
          _isImageSelected = true;
        });
      }
    } catch (e) {
      // print('Error: ${e.toString()}');
      if (mounted) {
        AppHelpers.showErrorDialogue(context, 'Error: ${e.toString()}');
      }
    }
  }

  Future<void> _pickImageFromCamera() async {
    try {
      final XFile? pickedImage =
          await ImagePicker().pickImage(source: ImageSource.camera);

      if (pickedImage != null) {
        setState(() {
          _imageFile = File(pickedImage.path);
          _isImageSelected = true;
        });
      }
    } catch (e) {
      // print('Error: ${e.toString()}');
      if (mounted) {
        AppHelpers.showErrorDialogue(context, 'Error: ${e.toString()}');
      }
    }
  }

  void _addChild() {
    FocusScope.of(context).unfocus();

    if (_havingSpecificHealthCondition &&
        _medicalConditionController.text.isEmpty) {
      AppHelpers.showErrorDialogue(
        context,
        "If your child has any specific medical condition, please specify.",
      );
      return; // Stop execution if validation fails
    }

    if (_formKey.currentState!.validate()) {
      if (_selectedBloodGroup != null) {
        if (_selectedBirthDate != null) {
          ChildDetails childDetails = ChildDetails(
            name: _childNameController.text.trim(),
            gender: _selectedGender!,
            height: double.parse(_heightController.text.trim()),
            weight: double.parse(_weightController.text.trim()),
            medicalConditions: _havingSpecificHealthCondition
                ? _medicalConditionController.text.trim()
                : null,
            dateOfBirth: _selectedBirthDate!,
            bloodGroup: _selectedBloodGroup!,
            parentId: widget.parentId,
            image: _imageFile!,
          );

          final addChildBloc = BlocProvider.of<AddChildBloc>(context);
          addChildBloc.add(AddChildEvent.childAdded(childDetails));
        } else {
          AppHelpers.showErrorDialogue(context, "Please select date of birth");
        }
      } else {
        AppHelpers.showErrorDialogue(context, "Please select blood group");
      }
    } else {
      AppHelpers.showErrorDialogue(
          context, "Please add data in all text fields.");
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("Add a child")),
      body: BlocConsumer<AddChildBloc, AddChildState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelpers.showCustomSnackBar(
                  context,
                  "Child added successfully",
                );
                if (!widget.isLoggedIn) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }
              } else {
                AppHelpers.showErrorDialogue(
                  context,
                  "Adding Child Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelpers.showErrorDialogue(
              context,
              "Adding Child Failed: $errorMessage",
            ),
          );
        },
        builder: (context, state) {
          bool isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return OverlayLoaderWidget(
            isLoading: isLoading,
            childWidget: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.05,
                      vertical: screenSize.height * 0.05,
                    ),
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: screenSize.width * 0.85),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Child Name Field
                            NormalTextField(
                              textEditingController: _childNameController,
                              validatorFunction: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter child name';
                                }
                                return null;
                              },
                              labelText: "Child's Name",
                              hintText: "Enter your child's name",
                            ),
                            _gap(context),

                            // Birth Date Field + Calendar Button
                            SelectDateWidget(
                              value: _selectedBirthDate,
                              onValueChange: (value) {
                                setState(() {
                                  _selectedBirthDate = value;
                                });
                              },
                              firstDate: DateTime(2000),
                              lastDate: DateTime.now(),
                            ),
                            _gap(context),

                            // Gender Dropdown
                            GenderDropdown(
                              selectedGender: _selectedGender ?? "",
                              onSelectingGender: (newValue) {
                                setState(() {
                                  _selectedGender = newValue;
                                });
                              },
                            ),
                            _gap(context),

                            // Blood Group Dropdown
                            BloodGroupDropdown(
                              selectedBloodGroup: _selectedBloodGroup ?? "",
                              onSelectingBloodGroup: (newValue) {
                                setState(() {
                                  _selectedBloodGroup = newValue;
                                });
                              },
                            ),
                            _gap(context),

                            // Height Field
                            NormalTextField(
                              textEditingController: _heightController,
                              validatorFunction: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter height';
                                }
                                return null;
                              },
                              labelText: "Height",
                              hintText: "Enter height (in C.M.)",
                              textInputType: TextInputType.number,
                            ),
                            _gap(context),

                            // Weight Field
                            NormalTextField(
                              textEditingController: _weightController,
                              validatorFunction: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter weight';
                                }
                                return null;
                              },
                              labelText: "Weight",
                              hintText: "Enter weight (in K.G.)",
                              textInputType: TextInputType.number,
                            ),
                            _gap(context),

                            // Health Condition Dropdown
                            OptionsDropdown(
                              havingSpecificHealthCondition:
                                  _havingSpecificHealthCondition,
                              onSelectingOption: (newValue) {
                                setState(() {
                                  _havingSpecificHealthCondition =
                                      newValue == "Yes";
                                });
                              },
                            ),
                            _gap(context),

                            // Medical Condition Field (Conditional Validation)
                            MultilineTextField(
                              controller: _medicalConditionController,
                              validatorFunction: (value) {
                                if (_havingSpecificHealthCondition &&
                                    (value == null || value.isEmpty)) {
                                  return 'Please enter medical condition';
                                }
                                return null;
                              },
                              label: "Medical Condition",
                              hintText: "Enter medical condition",
                            ),
                            _gap(context),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      AppColors.primaryColor,
                                    ),
                                  ),
                                  onPressed: _pickImageFromGallary,
                                  icon: const Icon(
                                    Icons.add_photo_alternate,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  style: const ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll(
                                      AppColors.primaryColor,
                                    ),
                                  ),
                                  onPressed: _pickImageFromCamera,
                                  icon: const Icon(
                                    Icons.add_a_photo,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            _gap(context),
                            CustomButton(
                              buttonWidth: double.infinity,
                              backgroundColor: AppColors.primaryColor,
                              textColor: Colors.white,
                              labelText: "Add Child",
                              onClick: _addChild,
                            ),
                            _isImageSelected
                                ? Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(
                                        image: FileImage(_imageFile!),
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _gap(BuildContext context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.025);
}
