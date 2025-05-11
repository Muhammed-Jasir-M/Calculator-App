import 'package:calculator_app/widgets/calculator/button_grid.dart';
import 'package:calculator_app/widgets/calculator/input_result_field.dart';
import 'package:calculator_app/widgets/common/app_bar.dart';
import 'package:calculator_app/widgets/common/drawer.dart';
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
        // Clears all Input & Result
        case 'C':
          input = '';
          result = '';
          break;

        // Remove one last element from Input
        case '<':
          if (input.isNotEmpty) {
            input = input.substring(0, input.length - 1);
          }
          break;

        // Compute the expression
        case '=':
          expression = input;
          expression = expression.replaceAll('x', '*').replaceAll('÷', '/');

          try {
            // Parse the expression
            Parser p = Parser();
            Expression exp = p.parse(expression);
            ContextModel cm = ContextModel();
            result = '${exp.evaluate(EvaluationType.REAL, cm)}';

            // Remove .0 from the result
            if (result.endsWith(".0")) {
              result = result.replaceAll('.0', '');
              return;
            }
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
      // Appbar
      appBar: const CAppBar(title: 'Calculator App'),
      // Drawer
      drawer: const CDrawer(),
      // Body
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
