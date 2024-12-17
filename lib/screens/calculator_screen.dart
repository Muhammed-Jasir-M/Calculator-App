import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/screens/widgets/button_grid.dart';
import 'package:calculator_app/screens/widgets/input_result_field.dart';
import 'package:calculator_app/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: CColors.primary,
      appBar: CAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: CInputResultField(),
          ),
          Expanded(
            flex: 6,
            child: CButtonGrid(),
          ),
        ],
      ),
    );
  }
}
