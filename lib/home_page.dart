import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(child: Card()),
              Expanded(child: Card()),
            ]),
          ),
          Expanded(
            child: Card(),
          ),
          Expanded(
            child: Row(children: [
              Expanded(child: Card()),
              Expanded(child: Card()),
            ]),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 58, 39, 92),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
