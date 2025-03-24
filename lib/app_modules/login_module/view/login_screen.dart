import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/add_child_module/view/add_child_screen.dart';
import 'package:vax_care_user/app_modules/home_page_module/view/home_screen.dart';
import 'package:vax_care_user/app_modules/login_module/bloc/parent_login_bloc.dart';
import 'package:vax_care_user/app_modules/login_module/class/login_details.dart';
import 'package:vax_care_user/app_modules/register_module/view/register_screen.dart';
import 'package:vax_care_user/app_utils/app_helpers.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';
import 'package:vax_care_user/app_widgets/custom_button.dart';
import 'package:vax_care_user/app_widgets/form_logo.dart';
import 'package:vax_care_user/app_widgets/normal_text_field.dart';
import 'package:vax_care_user/app_widgets/overlay_loader_widget.dart';
import 'package:vax_care_user/app_widgets/password_text_field.dart';
import 'package:vax_care_user/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState!.validate()) {
      LoginDetails loginDetails = LoginDetails(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      final parentLoginBloc = BlocProvider.of<ParentLoginBloc>(context);

      parentLoginBloc.add(ParentLoginEvent.loggedIn(loginDetails));
    } else {
      AppHelpers.showErrorDialogue(
        context,
        "Please add both email and password.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: BlocConsumer<ParentLoginBloc, ParentLoginState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) async {
              if (response.status == "success") {
                if (response.data.noOfChildren == 0) {
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    MyApp.navigatorKey.currentState?.pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => AddChildScreen(
                          isLoggedIn: false,
                          parentId: response.data.id,
                        ),
                      ),
                    );

                    AppHelpers.showCustomSnackBar(
                      context,
                      "You need to add atleast one of your children",
                    );
                  });
                } else {
                  await AppLocalstorage.userLogin(
                    username: response.data.name,
                    userId: response.data.id,
                  );
                  SchedulerBinding.instance.addPostFrameCallback((_) {
                    MyApp.navigatorKey.currentState?.pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );

                    AppHelpers.showCustomSnackBar(
                      context,
                      "Loggedin successfully",
                    );
                  });
                }
              } else {
                SchedulerBinding.instance.addPostFrameCallback((_) {
                  AppHelpers.showErrorDialogue(
                    context,
                    "Login Failed",
                  );
                });
              }
            },
            failure: (errorMessage) => AppHelpers.showErrorDialogue(
              context,
              "Login Failed: $errorMessage",
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
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSize.width * 0.05,
                    vertical: screenSize.height * 0.05,
                  ),
                  constraints:
                      BoxConstraints(maxWidth: screenSize.width * 0.85),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FormLogo(),
                        _gap(),
                        NormalTextField(
                          textEditingController: _emailController,
                          validatorFunction: (value) {
                            // add email validation
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
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
                        _gap(),
                        PasswordTextField(
                          passwordController: _passwordController,
                        ),
                        _gap(),
                        CustomButton(
                          buttonWidth: double.infinity,
                          backgroundColor: AppColors.primaryColor,
                          textColor: Colors.white,
                          labelText: "Login",
                          onClick: _login,
                        ),
                      ],
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
              builder: (context) => RegisterScreen(),
            ),
          ),
          child: Text(
            "Create Account",
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

  Widget _gap() {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(height: screenSize.height * 0.025);
  }
}
