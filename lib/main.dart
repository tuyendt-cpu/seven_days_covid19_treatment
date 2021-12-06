import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: LoginFunction(),
      ),
    );
  }
}
