import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/component_widget/banner_quay_vong.dart';
import 'package:seven_days_covid19_treatment/screens/home.dart';
import 'package:seven_days_covid19_treatment/screens/login.dart';
import 'package:seven_days_covid19_treatment/screens/registration.dart';
import 'package:seven_days_covid19_treatment/screens/verification.dart';
import 'package:seven_days_covid19_treatment/screens/survey.dart';
import 'package:seven_days_covid19_treatment/screens/forgot_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFEFEFE),
          fontFamily: "Poppins",
          textTheme: TextTheme(bodyText1: TextStyle(color: Color(0xFF4B4B4B)))),
      home: LoginFunction(),
    );
  }
}
