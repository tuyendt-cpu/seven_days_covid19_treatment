import 'package:flutter/material.dart';

class RegisterFailed extends StatelessWidget {
  const RegisterFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text(
          'Thất bại',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Image.asset(
          'assets/images/fail.gif',
          width: 20,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Close'),
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ]);
  }
}
