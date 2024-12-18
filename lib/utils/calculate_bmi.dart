import 'dart:math';

import 'package:calculator_app/constants/colors.dart';

class CCalculateBmi {
  CCalculateBmi({
    required this.height,
    required this.weight,
    this.age,
    this.gender,
  });

  final int height;
  final int weight;
  final int? age;
  final Gender? gender;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obesity';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Normal weight';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You have significantly higher body fat levels, which can lead to an increased risk of serious health issues, such as heart disease and hypertension.';
    } else if (_bmi >= 25 && _bmi < 30) {
      return "You have more body weight than is considered healthy for your height. This can lead to increased health risks, such as cardiovascular diseases and diabetes.";
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a healthy weight for your height, and you are in good overall health.';
    } else {
      return 'You have lower body weight than is healthy for your height, which could lead to potential health issues.';
    }
  }

  String getAdvice() {
    if (_bmi >= 30) {
      return 'Consult a doctor, exercise regularly, follow a balanced diet, and reduce fast food.';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'Exercise regularly, follow a balanced diet, and reduce fast food. Consider consulting a doctor.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Maintain a balanced diet, exercise regularly, and schedule routine check-ups.';
    } else {
      return 'Follow a balanced diet and consider consulting a healthcare professional.';
    }
  }
}
