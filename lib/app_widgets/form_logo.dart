import 'package:flutter/material.dart';

class FormLogo extends StatelessWidget {
  const FormLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/logo_dark.png",
          height: screenSize.height * 0.15,
        ),
        Text(
          "Welcome to Serene!",
          textAlign: TextAlign.center,
          style: isSmallScreen
              ? Theme.of(context).textTheme.headlineSmall
              : Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black,
                  ),
        )
      ],
    );
  }
}
