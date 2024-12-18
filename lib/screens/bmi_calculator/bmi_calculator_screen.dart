import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/bmi_calculator/bmi_calculator_screen/text_value_button_slider_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/bmi_calculator_screen/gender_card.dart';
import 'package:calculator_app/widgets/common/app_bar.dart';
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
      // Body
      body: Column(
        children: [
          // First Row
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

          // Weight Button Card
          Expanded(
            child: Row(
              children: [
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
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: CColors.calculateButtonColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Center(
              child: Text(
                'Calculate Your BMI',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
