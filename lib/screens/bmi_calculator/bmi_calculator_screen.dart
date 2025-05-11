import 'package:calculator_app/constants/enums.dart';
import 'package:calculator_app/screens/bmi_calculator/bmi_result_screen.dart';
import 'package:calculator_app/utils/calculate_bmi.dart';
import 'package:calculator_app/widgets/bmi_calculator/text_value_button_slider_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/gender_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/container_button.dart';
import 'package:calculator_app/widgets/common/app_bar.dart';
import 'package:calculator_app/widgets/common/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  Gender? selectedGender;

  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: const CAppBar(title: 'BMI Calculator'),
      // Drawer
      drawer: const CDrawer(),
      // Body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Gender Card Row
            Expanded(
              child: Row(
                children: [
                  // Male Gender Card
                  CGenderCard(
                    isSelected: selectedGender == Gender.male,
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    icon: FontAwesomeIcons.mars,
                    text: 'Male',
                  ),

                  // Female Gender Card
                  CGenderCard(
                    isSelected: selectedGender == Gender.female,
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    icon: FontAwesomeIcons.venus,
                    text: 'Female',
                  ),
                ],
              ),
            ),

            // Height Slider Card
            CTextValueSliderAndButtonCard(
              text: "Height",
              value: height,
              unit: 'cm',
              onValueChanged: (newValue) {
                setState(() {
                  height = newValue;
                });
              },
              showSlider: true,
            ),

            // Weight & Age Card Row
            Expanded(
              child: Row(
                children: [
                  // Weight Button Card
                  CTextValueSliderAndButtonCard(
                    text: 'Weight',
                    value: weight,
                    unit: 'kg',
                    onValueChanged: (newValue) {
                      setState(() {
                        weight = newValue;
                      });
                    },
                    showButton: true,
                  ),

                  // Age Button Card
                  CTextValueSliderAndButtonCard(
                    text: 'Age',
                    value: age,
                    unit: 'yr',
                    onValueChanged: (newValue) {
                      setState(() {
                        age = newValue;
                      });
                    },
                    showButton: true,
                  ),
                ],
              ),
            ),

            // Calculate Button
            CContainerButton(
              text: 'Calculate BMI',
              onTap: () {
                CCalculateBmi calc = CCalculateBmi(
                  height: height,
                  weight: weight,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResultScreen(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                      advice: calc.getAdvice(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
