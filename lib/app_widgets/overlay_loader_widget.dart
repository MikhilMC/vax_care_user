// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:vax_care_user/app_constants/app_colors.dart';

class OverlayLoaderWidget extends StatelessWidget {
  final bool isLoading;
  final Widget childWidget;
  const OverlayLoaderWidget({
    super.key,
    required this.isLoading,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        childWidget,
        if (isLoading)
          Container(
            color: Colors.black.withValues(alpha: 0.5),
            child: const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            ),
          ),
      ],
    );
  }
}
