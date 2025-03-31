import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/add_child_module/view/add_child_screen.dart';
import 'package:vax_care_user/app_modules/login_module/view/login_screen.dart';
import 'package:vax_care_user/app_modules/register_module/bloc/parent_register_bloc/parent_register_bloc.dart';
import 'package:vax_care_user/app_modules/register_module/class/parent_registration_details.dart';
import 'package:vax_care_user/app_modules/register_module/widget/relationship_dropdown.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/custom_button.dart';
import 'package:vax_care_user/app_widgets/form_logo.dart';
import 'package:vax_care_user/app_widgets/multi_line_text_field.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';
import 'package:vax_care_user/app_widgets/overlay_loader_widget.dart';
import 'package:vax_care_user/app_widgets/password_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String? _selectedRelationship;
  File? _profileImage;

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _fullNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  void _register() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      ParentRegistrationDetails parentRegistrationDetails =
          ParentRegistrationDetails(
        name: _fullNameController.text.trim(),
        email: _emailController.text.trim(),
        phone: _phoneNumberController.text.trim(),
        password: _passwordController.text.trim(),
        address: _addressController.text.trim(),
        relationship: _selectedRelationship!,
        image: _profileImage!,
      );

      final parentRegisterBloc = BlocProvider.of<ParentRegisterBloc>(context);

      parentRegisterBloc
          .add(ParentRegisterEvent.parenRegistered(parentRegistrationDetails));
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<ParentRegisterBloc, ParentRegisterState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.status == "success") {
                AppHelpers.showCustomSnackBar(
                  context,
                  "Parent Registration Successfull",
                );

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AddChildScreen(
                      isLoggedIn: false,
                      parentId: response.data.id,
                    ),
                  ),
                );
              } else {
                AppHelpers.showErrorDialogue(
                  context,
                  "Parent Registration Failed",
                );
              }
            },
            failure: (errorMessage) => AppHelpers.showErrorDialogue(
              context,
              "Parent Registration Failed: $errorMessage",
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
            childWidget: Form(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FormLogo(),
                          _gap(context),
                          // Profile Picture Upload
                          InkWell(
                            onTap: _pickImage,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey[300],
                              backgroundImage: _profileImage != null
                                  ? FileImage(_profileImage!)
                                  : null,
                              child: _profileImage == null
                                  ? const Icon(
                                      Icons.camera_alt,
                                      size: 40,
                                      color: Colors.black54,
                                    )
                                  : null,
                            ),
                          ),
                          _gap(context),
                          NormalTextField(
                            textEditingController: _fullNameController,
                            validatorFunction: (value) {
                              // add full name validation
                              if (value == null || value.isEmpty) {
                                return 'Please enter full name';
                              }

                              return null;
                            },
                            labelText: 'Full Name',
                            hintText: 'Enter your full name',
                            textFieldIcon: Icon(Icons.person),
                          ),
                          _gap(context),
                          NormalTextField(
                            textEditingController: _emailController,
                            validatorFunction: (value) {
                              // add email validation
                              if (value == null || value.isEmpty) {
                                return 'Please enter email';
                              }

                              bool emailValid = RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value);
                              if (!emailValid) {
                                return 'Please enter a valid email';
                              }

                              return null;
                            },
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            textFieldIcon: Icon(Icons.email_outlined),
                            textInputType: TextInputType.emailAddress,
                          ),
                          _gap(context),
                          NormalTextField(
                            textEditingController: _phoneNumberController,
                            validatorFunction: (value) {
                              // add phone number validation
                              if (value == null || value.isEmpty) {
                                return 'Please enter phone number';
                              }

                              bool phoneValid =
                                  RegExp(r"^(\+91|\+91\-|0)?[789]\d{9}$")
                                      .hasMatch(value);
                              if (!phoneValid) {
                                return 'Please enter a valid phone number';
                              }

                              return null;
                            },
                            labelText: 'Phone Number',
                            hintText: 'Enter your phone number',
                            textInputType: TextInputType.phone,
                            textFieldIcon: Icon(Icons.phone),
                          ),
                          _gap(context),
                          MultilineTextField(
                            label: "Address",
                            controller: _addressController,
                            hintText: "Enter your address",
                            icon: Icon(Icons.home),
                            validatorFunction: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please select an option';
                              }
                              return null;
                            },
                          ),
                          _gap(context),
                          RelationshipDropdown(
                            selectedRelationship: _selectedRelationship ?? "",
                            onSelect: (value) {
                              setState(() {
                                _selectedRelationship = value;
                              });
                            },
                          ),
                          _gap(context),
                          PasswordTextField(
                            passwordController: _passwordController,
                          ),
                          _gap(context),
                          CustomButton(
                            buttonWidth: double.infinity,
                            backgroundColor: AppColors.primaryColor,
                            textColor: Colors.white,
                            labelText: "Register",
                            onClick: _register,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      persistentFooterButtons: [
        InkWell(
          onTap: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          ),
          child: Text(
            "Login Account",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
        )
      ],
      persistentFooterAlignment: AlignmentDirectional.center,
    );
  }

  Widget _gap(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(height: screenSize.height * 0.025);
  }
}
