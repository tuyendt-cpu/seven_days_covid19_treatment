import 'package:flutter/material.dart';
import 'package:seven_days_covid19_treatment/screens/movement.dart';

// ignore: camel_case_types
class card_fitness extends StatelessWidget {
  const card_fitness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFFF5F5F5),
      child: InkWell(
          onTap: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CacDongTacWidget()));
          },
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Icon(Icons.fitness_center),
              const Text('Tập thể dục')
            ],
          )),
    );
  }
}
