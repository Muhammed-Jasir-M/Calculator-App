import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/screens/bmi_calculator/bmi_calculator_screen.dart';
import 'package:calculator_app/widgets/calculator/button_grid.dart';
import 'package:calculator_app/widgets/calculator/input_result_field.dart';
import 'package:calculator_app/widgets/common/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        // Clears all Input & Result
        case 'C':
          input = '';
          result = '';
          break;

        // Remove one last element from Input
        case 'D':
          if (input.isNotEmpty) {
            input = input.substring(0, input.length - 1);
          }
          break;

        // Compute the expression
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

        // Append Elements one after another
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
      appBar: CAppBar(
        title: 'Calculator App',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BmiCalculatorScreen(),
                ),
              );
            },
            icon: const Icon(FontAwesomeIcons.weightScale),
          ),
        ],
      ),

      // Body
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
