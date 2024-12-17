import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/button_grid.dart';
import 'package:calculator_app/widgets/app_bar.dart';
import 'package:calculator_app/widgets/input_result_field.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String input = '';
  String result = '';
  String expression = '';

  void buttonPressed(String value) {
    setState(() {
      switch (value) {
        case 'C':
          input = '';
          result = '';
          break;

        case 'D':
          if (input.isNotEmpty) {
            input = input.substring(0, input.length - 1);
          }
          break;

        case '=':
          expression = input;
          expression = expression.replaceAll('x', '*').replaceAll('÷', '/');

          try {
            Parser p = Parser();
            Expression exp = p.parse(expression);
            ContextModel cm = ContextModel();
            result = '${exp.evaluate(EvaluationType.REAL, cm)}';
          } catch (e) {
            result = 'Error';
          }
          break;

        default:
          input += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.primary,
      // Appbar
      appBar: const CAppBar(),
      body: Column(
        children: [
          // Display
          Expanded(
            flex: 3,
            child: CInputResultField(input: input, result: result),
          ),
          // Button Grid
          Expanded(
            flex: 6,
            child: CButtonGrid(buttonPressed: buttonPressed),
          ),
        ],
      ),
    );
  }
}
