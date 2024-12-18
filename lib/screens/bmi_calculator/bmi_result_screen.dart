import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/bmi_calculator/reusable_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/container_button.dart';
import 'package:calculator_app/widgets/common/app_bar.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const CAppBar(title: 'BMI Calculator'),
      // Body
      body: Column(
        children: [
          // Your Result Text
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Align(
                alignment: Alignment.topLeft,
                child:  Text(
                  'Your Result',
                  style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),

          // Result Card
          const Expanded(
            flex: 5,
            child: CReusableCard(
              width: double.infinity,
              bgColor: CColors.cardBgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // BMI Result
                  Text(
                    'Normal',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: CColors.greenText),
                  ),

                  // BMI Value
                  Text(
                    '15.2',
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // BMI Remark
                  Text(
                    'Your BMI is Normal.',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Calculate Button
          CContainerButton(
            text: 'Calculate Again',
            onTap: Navigator.of(context).pop,
          ),
        ],
      ),
    );
  }
}
