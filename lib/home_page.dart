import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

Color widgetColor = const Color.fromARGB(255, 58, 39, 92);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 20;
  int weight = 60;
  int height = 160;
  bool isMale = true;

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
                child: GestureDetector(
                  onTap: () {
                    isMale = true;
                    setState(() {});
                  },
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Height"),
                  Text(height.toString() + " cm"),
                  Slider(
                    value: height.toDouble(),
                    onChanged: ((value) {
                      height = value.round();
                      setState(() {});
                    }),
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Weight"),
                        Text(weight.toString() + " Kg"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                              child: Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                              child: Icon(Icons.remove),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Card(
                  color: widgetColor,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Age"),
                        Text(age.toString() + " Yrs"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              child: Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              child: Icon(Icons.remove),
                            ),
                          ],
                        )
                      ]),
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
