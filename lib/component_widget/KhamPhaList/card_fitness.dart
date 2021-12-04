import 'package:flutter/material.dart';

class card_fitness extends StatelessWidget {
  const card_fitness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Color(0xFFF5F5F5),
      child: InkWell(
          onTap: () async {},
          child: Column(
            children: <Widget>[Icon(Icons.fitness_center), Text('Tập thể dục')],
          )),
    );
  }
}
