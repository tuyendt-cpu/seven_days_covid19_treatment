import 'package:flutter/material.dart';

class card_nutrient extends StatelessWidget {
  const card_nutrient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Color(0xFFF5F5F5),
      child: InkWell(
          onTap: () async {},
          child: Column(
            children: <Widget>[Icon(Icons.dining), Text('Dinh Dưỡng')],
          )),
    );
  }
}