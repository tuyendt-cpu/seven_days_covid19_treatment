import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screen/dang_ky.dart';
import 'package:seven_days_covid19_treatment/screen/dang_nhap.dart';
import 'package:seven_days_covid19_treatment/screen/homepage.dart';
import 'package:seven_days_covid19_treatment/component_widget/banner_quay_vong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: dangNhap(),
      ),
    );
  }
}
