import 'package:flutter/material.dart';

class AppHelpers {
  static Future<void> showErrorDialogue(
    BuildContext context,
    String message,
  ) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Error"),
          // backgroundColor: Colors.black,
          // surfaceTintColor: Colors.green.shade100,
          titleTextStyle: const TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          content: Text(
            message.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
