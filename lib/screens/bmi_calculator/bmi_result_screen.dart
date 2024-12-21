import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
import 'package:calculator_app/screens/calculator/calculator_screen.dart';
import 'package:calculator_app/widgets/bmi_calculator/reusable_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/container_button.dart';
import 'package:calculator_app/widgets/common/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.advice,
  });

  final String bmiResult, resultText, interpretation, advice;

  @override
  Widget build(BuildContext context) {
    final isDark = CUtils.isDarkMode(context);

    return Scaffold(
      // Appbar
      appBar: CAppBar(
        title: 'BMI Calculator',
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CalculatorScreen(),
                  ),
                );
              },
              icon: const Icon(FontAwesomeIcons.calculator),
            ),
          ),
        ],
      ),
      // Body
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Your Result Text
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20.0, left: 15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
              ),
            ),
          ),

          // Result Card
          Expanded(
            flex: 5,
            child: CReusableCard(
              bgColor:
                  isDark ? CColors.darkCardBgColor : CColors.lightCardBgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // BMI Result
                  Text(
                    resultText,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: CColors.greenText,
                    ),
                  ),

                  // BMI Value
                  Text(
                    bmiResult,
                    style: const TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // BMI Remark
                  Text(
                    interpretation,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  // BMI Advice
                  Text(
                    advice,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          // Calculate Button
          CContainerButton(
            text: 'Re-Calculate',
            onTap: Navigator.of(context).pop,
          ),
        ],
      ),
    );
  }
}
