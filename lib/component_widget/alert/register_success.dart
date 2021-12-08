import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screens/login.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: const Color(0xFFF5F5F5),
        title: const Text(
          'Thành công',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Image.asset(
          'assets/images/animated-check.gif',
          width: 20,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoginFunction()));
            },
            child: const Text(
              'OK',
            ),
          ),
        ]);
  }
}
