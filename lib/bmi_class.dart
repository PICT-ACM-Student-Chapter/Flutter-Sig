import 'dart:math';

import 'package:flutter/material.dart';

class BMI {
  static double bmi = 0.0;
  static String result = "";

  static void calculate(int height, int weight) {
    bmi = weight / pow(height / 100, 2);

    if (bmi >= 25) {
      result = 'Overweight';
    } else if (bmi > 18.5) {
      result = 'Normal ';
    } else {
      result = 'Underweight';
    }

    debugPrint(result);
    debugPrint(bmi.toString());
  }
}
