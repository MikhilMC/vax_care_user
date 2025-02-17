// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_modules/login_module/view/login_screen.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/multi_line_text_field.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';
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

  final List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-'
  ]; // ✅ List of blood groups
  final List<String> genders = ["Male", "Female"];
  final List<String> options = ["No", "Yes"];

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
    if (_formKey.currentState!
            .validate() /* &&
        _selectedBloodGroup != null &&
        _selectedBirthDate != null*/
        ) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Child added successfully',
          ),
        ),
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
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("Add a child")),
      body: SingleChildScrollView(
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
                          // if (value == null || value.isEmpty) {
                          //   return 'Please enter child name';
                          // }
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
                      DropdownButtonFormField<String>(
                        value: _selectedGender,
                        items: genders.map((gender) {
                          return DropdownMenuItem(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedGender = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Gender",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          // if (value == null || value.isEmpty) {
                          //   return 'Please select a gender';
                          // }
                          return null;
                        },
                      ),
                      _gap(context),

                      // Blood Group Dropdown
                      DropdownButtonFormField<String>(
                        value: _selectedBloodGroup,
                        items: bloodGroups.map((group) {
                          return DropdownMenuItem(
                            value: group,
                            child: Text(group),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedBloodGroup = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Blood Group",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          // if (value == null || value.isEmpty) {
                          //   return 'Please select a blood group';
                          // }
                          return null;
                        },
                      ),
                      _gap(context),
                      // Height Field
                      NormalTextField(
                        textEditingController: _heightController,
                        validatorFunction: (value) {
                          // if (value == null || value.isEmpty) {
                          //   return 'Please enter height';
                          // }
                          return null;
                        },
                        labelText: "Height",
                        hintText: "Enter height",
                      ),
                      _gap(context),

                      // Weight Field
                      NormalTextField(
                        textEditingController: _weightController,
                        validatorFunction: (value) {
                          // if (value == null || value.isEmpty) {
                          //   return 'Please enter weight';
                          // }
                          return null;
                        },
                        labelText: "Weight",
                        hintText: "Enter weight",
                      ),
                      _gap(context),

                      // Health Condition Dropdown
                      DropdownButtonFormField<String>(
                        value: _havingSpecificHealthCondition ? "Yes" : "No",
                        items: options.map((option) {
                          return DropdownMenuItem(
                            value: option,
                            child: Text(option),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _havingSpecificHealthCondition = newValue == "Yes";
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "Has Specific Health Condition?",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          // if (value == null || value.isEmpty) {
                          //   return 'Please select an option';
                          // }
                          return null;
                        },
                      ),
                      _gap(context),

                      // Medical Condition Field (Conditional Validation)
                      MultilineTextField(
                        controller: _medicalConditionController,
                        validatorFunction: (value) {
                          // if (_havingSpecificHealthCondition &&
                          //     (value == null || value.isEmpty)) {
                          //   return 'Please enter medical condition';
                          // }
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
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                          ),
                          onPressed: _addChild,
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Add Child',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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
  }

  Widget _gap(BuildContext context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.025);
}
