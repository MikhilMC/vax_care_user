// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vax_care_user/app_blocs/child_details_bloc/child_details_bloc.dart';

import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_models/child_model/child_model.dart';
import 'package:vax_care_user/app_modules/add_child_module/bloc/update_child_bloc/update_child_bloc.dart';
import 'package:vax_care_user/app_modules/add_child_module/class/update_child_details.dart';
import 'package:vax_care_user/app_modules/add_child_module/widget/blood_group_dropdown.dart';
import 'package:vax_care_user/app_modules/add_child_module/widget/gender_dropdown.dart';
import 'package:vax_care_user/app_modules/add_child_module/widget/options_dropdown.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/custom_button.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/multi_line_text_field.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';
import 'package:vax_care_user/app_widgets/overlay_loader_widget.dart';
import 'package:vax_care_user/app_widgets/select_date_widget.dart';

class UpdateChildScreen extends StatefulWidget {
  final int childId;
  const UpdateChildScreen({
    super.key,
    required this.childId,
  });

  @override
  State<UpdateChildScreen> createState() => _UpdateChildScreenState();
}

class _UpdateChildScreenState extends State<UpdateChildScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _childNameController;
  late TextEditingController _heightController;
  late TextEditingController _weightController;
  late TextEditingController _medicalConditionController;

  late ChildModel _childDetails;
  late DateTime? _selectedBirthDate;
  late String? _selectedBloodGroup; // ✅ Store selected blood group
  bool _isImageSelected = false;
  File? _imageFile;
  late String? _selectedGender;
  late bool? _havingSpecificHealthCondition;

  @override
  void initState() {
    super.initState();
    context
        .read<ChildDetailsBloc>()
        .add(ChildDetailsEvent.childDetailsFetched(widget.childId));
  }

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

  void _updateChild() {
    FocusScope.of(context).unfocus();

    if (_havingSpecificHealthCondition! &&
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
          UpdateChildDetails childDetails = UpdateChildDetails(
            childId: widget.childId,
            name: _childDetails.name != _childNameController.text.trim()
                ? _childNameController.text.trim()
                : null,
            gender: _childDetails.gender != _selectedGender!
                ? _selectedGender
                : null,
            height: _childDetails.height !=
                    double.parse(_heightController.text.trim())
                ? double.parse(_heightController.text.trim())
                : null,
            weight: _childDetails.weight !=
                    double.parse(_weightController.text.trim())
                ? double.parse(_weightController.text.trim())
                : null,
            medicalConditions: _havingSpecificHealthCondition!
                ? _medicalConditionController.text.trim()
                : null,
            dateOfBirth: _childDetails.birthdate != _selectedBirthDate!
                ? _selectedBirthDate
                : null,
            bloodGroup: _childDetails.bloodGroup != _selectedBloodGroup!
                ? _selectedBloodGroup!
                : null,
            image: _imageFile,
          );

          final updateChildBloc = BlocProvider.of<UpdateChildBloc>(context);
          updateChildBloc
              .add(UpdateChildEvent.childDetailsUpdated(childDetails));
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
      appBar: AppBar(title: Text("Update child")),
      body: BlocConsumer<ChildDetailsBloc, ChildDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (child) {
              setState(() {
                _childDetails = child;
                _childNameController = TextEditingController(
                  text: child.name,
                );
                _heightController = TextEditingController(
                  text: child.height.toString(),
                );
                _weightController = TextEditingController(
                  text: child.weight.toString(),
                );
                _medicalConditionController = TextEditingController(
                  text: child.medicalConditions ?? "",
                );
                _selectedBirthDate = child.birthdate;
                _selectedBloodGroup = child.bloodGroup;
                _selectedGender = child.gender;
                _havingSpecificHealthCondition =
                    child.medicalConditions != null;
              });
            },
            error: (errorMessage) => AppHelpers.showErrorDialogue(
              context,
              errorMessage,
            ),
          );
        },
        builder: (context, state) {
          if (state is ChildDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! ChildDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          return BlocConsumer<UpdateChildBloc, UpdateChildState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () {},
                success: (response) {
                  if (response.status == "success") {
                    AppHelpers.showCustomSnackBar(
                      context,
                      "Child details updated successfully",
                    );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  } else {
                    AppHelpers.showErrorDialogue(
                      context,
                      "Updating Child Details Failed",
                    );
                  }
                },
                failure: (errorMessage) => AppHelpers.showErrorDialogue(
                  context,
                  "Updating Child Details Failed: $errorMessage",
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
                            constraints: BoxConstraints(
                                maxWidth: screenSize.width * 0.85),
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
                                      _havingSpecificHealthCondition!,
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
                                    if (_havingSpecificHealthCondition! &&
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                  labelText: "Update Child Details",
                                  onClick: _updateChild,
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
                                    : Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image(
                                            image: NetworkImage(
                                              "${AppUrls.baseUrl}/${_childDetails.photo}",
                                            ),
                                          ),
                                        ),
                                      ),
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
          );
        },
      ),
    );
  }

  Widget _gap(BuildContext context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.025);
}
