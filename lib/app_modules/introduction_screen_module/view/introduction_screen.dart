import 'package:flutter/material.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';
import 'package:vax_care_user/app_modules/introduction_screen_module/models/onboarding_page_model.dart';
import 'package:vax_care_user/app_modules/introduction_screen_module/widgets/onboarding_page_presenter.dart';
import 'package:vax_care_user/app_modules/login_module/view/login_screen.dart';
import 'package:vax_care_user/app_utils/app_localstorage.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  Future<void> _navigate() async {
    await AppLocalstorage.disableIntroScreen();
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          OnboardingPageModel(
            title: 'Welcome to Child Vaccination Tracker',
            description:
                'Easily manage your child\'s vaccination records in one place. Stay informed and ensure timely vaccinations for better health.',
            imageUrl: 'assets/images/introduction_page_1.jpg',
            bgColor: AppColors.onBoardingPage1Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
          OnboardingPageModel(
            title: 'Personalized Vaccination Schedule',
            description:
                'Get a customized vaccination timeline for your child based on their age. Never miss an important shot with automated reminders.',
            imageUrl: 'assets/images/introduction_page_2.jpg',
            bgColor: AppColors.onBoardingPage2Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
          OnboardingPageModel(
            title: 'Secure & Accessible Anywhere',
            description:
                'All your vaccination records are securely stored and accessible anytime, anywhere. No more lost paper records!',
            imageUrl: 'assets/images/introduction_page_3.jpg',
            bgColor: AppColors.onBoardingPage3Color,
            textColor: Colors.white,
            isLightBackground: false,
          ),
          OnboardingPageModel(
            title: 'Stay Informed & Alerted',
            description:
                'Receive notifications for upcoming vaccinations, government health advisories, and expert tips on child healthcare.',
            imageUrl: 'assets/images/introduction_page_4.jpg',
            bgColor: AppColors.onBoardingPage4Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
        ],
        onSkip: _navigate,
        onFinish: _navigate,
      ),
    );
  }
}
