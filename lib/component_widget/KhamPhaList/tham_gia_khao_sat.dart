import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screens/survey.dart';

// ignore: camel_case_types
class card_tham_gia_khao_sat extends StatelessWidget {
  const card_tham_gia_khao_sat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFFF5F5F5),
      child: InkWell(
          onTap: () async {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const survey()));
          },
          child: Column(
            children: const <Widget>[
              Icon(Icons.check_box),
              Text('Cập nhật\ntình trạng\nsức khỏe')
            ],
          )),
    );
  }
}
