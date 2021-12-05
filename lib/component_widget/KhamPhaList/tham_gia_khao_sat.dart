import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screen/khao_sat.dart';

class card_tham_gia_khao_sat extends StatelessWidget {
  const card_tham_gia_khao_sat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Color(0xFFF5F5F5),
      child: InkWell(
          onTap: () async {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => khao_sat()));
          },
          child: Column(
            children: <Widget>[
              Icon(Icons.dining),
              Text('Cập nhật tình trạng sức khỏe')
            ],
          )),
    );
  }
}
