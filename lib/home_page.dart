import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

Color widgetColor = const Color.fromARGB(255, 58, 39, 92);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: Card(
                  color: widgetColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.male,
                          color: Colors.blue,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Male"),
                      ]),
                ),
              ),
              Expanded(
                child: Card(
                  color: widgetColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.female,
                          color: Colors.pink,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Female"),
                      ]),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Card(
              color: widgetColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Height"),
                  Text("192 cm"),
                  Slider(
                    value: 150.0,
                    onChanged: ((value) => {}),
                    min: 100.0,
                    max: 200,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Card(
                  color: widgetColor,
                  child: Container(),
                ),
              ),
              Expanded(
                child: Card(
                  color: widgetColor,
                  child: Container(),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key, required this.color, required this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
