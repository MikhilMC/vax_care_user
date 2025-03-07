// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  final String message;
  const EmptyList({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Asset image to visually indicate an empty list
            Image.asset(
              'assets/images/empty_list.png', // Path to your asset image
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
              fit: BoxFit.cover, // Ensures the image scales properly
            ),
            const SizedBox(height: 16), // Spacing between image and text
            // Message to inform the user
            Text(
              message,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
