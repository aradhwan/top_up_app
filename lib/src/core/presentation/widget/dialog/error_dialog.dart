import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String _message;
  const ErrorDialog({super.key, required String message}) : _message = message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error'),
      icon: const Icon(
        Icons.error_outline,
        color: Colors.red,
      ),
      content: Text(_message),
      actions: [
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return ErrorDialog(message: message);
    },
  );
}
