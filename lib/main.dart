import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screens/home.dart';
import 'package:seven_days_covid19_treatment/screens/login.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: LoginFunction(),
      ),
    );
  }
}
