import 'package:flutter/material.dart';

import 'bmi_class.dart';
import 'constants.dart';

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
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 27),
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        elevation: 10,
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
                    color: isMale ? Colors.lightBlueAccent : widgetColor,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.male,
                            color: Colors.blue,
                            size: 80.0,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Male", style: textStyle),
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    isMale = false;
                    setState(() {});
                  },
                  child: Card(
                    color: isMale ? widgetColor : Colors.pinkAccent,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.female,
                            color: Colors.pink,
                            size: 80.0,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text("Female", style: textStyle),
                        ]),
                  ),
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
                  Text("Height", style: textStyle),
                  Text(height.toString() + " cm", style: textStyle),
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
                        Text("Weight", style: textStyle),
                        Text(weight.toString() + " Kg", style: textStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                              child: const Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                              child: const Icon(Icons.remove),
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
                        Text("Age", style: textStyle),
                        Text(age.toString() + " Yrs", style: textStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              child: const Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              child: const Icon(Icons.remove),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              BMI.calculate(height, weight);
            },
            child: Container(
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 50.0,
              child: Center(
                child: Text('Calculate', style: textStyle),
              ),
            ),
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
