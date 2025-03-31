import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vax_care_user/app_blocs/parent_profile_bloc/parent_profile_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_constants/app_urls.dart';
import 'package:vax_care_user/app_models/profile_model/profile_model.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_modules/register_module/bloc/edit_parent_bloc/edit_parent_bloc.dart';
import 'package:vax_care_user/app_modules/register_module/class/parent_updation_details.dart';
import 'package:vax_care_user/app_modules/register_module/widget/relationship_dropdown.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_widgets/custom_button.dart';
import 'package:vax_care_user/app_widgets/custom_error_widget.dart';
import 'package:vax_care_user/app_widgets/multi_line_text_field.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';
import 'package:vax_care_user/app_widgets/overlay_loader_widget.dart';
import 'package:vax_care_user/app_widgets/password_text_field.dart';

class EditParentScreen extends StatefulWidget {
  const EditParentScreen({super.key});

  @override
  State<EditParentScreen> createState() => _EditParentScreenState();
}

class _EditParentScreenState extends State<EditParentScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _passwordController;
  late TextEditingController _addressController;

  late ProfileModel _userProfile;
  late String? _selectedRelationship;
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

  @override
  void initState() {
    super.initState();
    context
        .read<ParentProfileBloc>()
        .add(ParentProfileEvent.parentProfileDetailsFetched());
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

  void _editParent() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      ParentUpdationDetails parentUpdationDetails = ParentUpdationDetails(
        name: _userProfile.name != _fullNameController.text.trim()
            ? _fullNameController.text.trim()
            : null,
        email: _userProfile.email != _emailController.text.trim()
            ? _emailController.text.trim()
            : null,
        phone: _userProfile.phone != _phoneNumberController.text.trim()
            ? _phoneNumberController.text.trim()
            : null,
        password: _userProfile.password != _passwordController.text.trim()
            ? _passwordController.text.trim()
            : null,
        address: _userProfile.address != _addressController.text.trim()
            ? _addressController.text.trim()
            : null,
        relationship: _userProfile.relationship != _selectedRelationship!
            ? _selectedRelationship
            : null,
        image: _profileImage,
      );

      final parentRegisterBloc = BlocProvider.of<EditParentBloc>(context);

      parentRegisterBloc
          .add(EditParentEvent.parentDetailsEdited(parentUpdationDetails));
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Parent Details"),
      ),
      body: BlocConsumer<ParentProfileBloc, ParentProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (parentProfile) {
              setState(() {
                _userProfile = parentProfile;
                _fullNameController = TextEditingController(
                  text: parentProfile.name,
                );
                _emailController = TextEditingController(
                  text: parentProfile.email,
                );
                _phoneNumberController = TextEditingController(
                  text: parentProfile.phone,
                );
                _passwordController = TextEditingController(
                  text: parentProfile.password,
                );
                _addressController = TextEditingController(
                  text: parentProfile.address,
                );
                _selectedRelationship = parentProfile.relationship;
              });
            },
            error: (errorMessage) => AppHelpers.showErrorDialogue(
              context,
              errorMessage,
            ),
          );
        },
        builder: (context, state) {
          if (state is ParentProfileDetailsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is! ParentProfileDetailsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            );
          }

          return BlocConsumer<EditParentBloc, EditParentState>(
            listener: (context, state) {
              state.whenOrNull(
                loading: () {},
                success: (response) {
                  if (response.status == "success") {
                    AppHelpers.showCustomSnackBar(
                      context,
                      "Editing parent details successfull",
                    );

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(),
                      ),
                    );
                  } else {
                    AppHelpers.showErrorDialogue(
                      context,
                      "Editing Parent Details Failed",
                    );
                  }
                },
                failure: (errorMessage) => AppHelpers.showErrorDialogue(
                  context,
                  "Editing Parent Details Failed: $errorMessage",
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
                              InkWell(
                                onTap: _pickImage,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.grey[300],
                                  backgroundImage: _profileImage != null
                                      ? FileImage(_profileImage!)
                                      : NetworkImage(
                                          "${AppUrls.baseUrl}/${_userProfile.image}",
                                        ),
                                  child: null,
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
                                selectedRelationship:
                                    _selectedRelationship ?? "",
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
                                labelText: "Edit Parent",
                                onClick: _editParent,
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
          );
        },
      ),
    );
  }

  Widget _gap(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(height: screenSize.height * 0.025);
  }
}
