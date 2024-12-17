import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/button.dart';
import 'package:flutter/material.dart';

class CButtonGrid extends StatelessWidget {
  const CButtonGrid({super.key, required this.buttonPressed});

  final void Function(String) buttonPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: 'C',
                buttonColor: CColors.clearBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('C'),
              ),
              CButton(
                buttonText: '%',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('%'),
              ),
              CButton(
                buttonText: '/',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('÷'),
              ),
              CButton(
                buttonText: 'D',
                buttonColor: CColors.clearBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('D'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '7',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('7'),
              ),
              CButton(
                buttonText: '8',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('8'),
              ),
              CButton(
                buttonText: '9',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('9'),
              ),
              CButton(
                buttonText: 'x',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('x'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '4',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('4'),
              ),
              CButton(
                buttonText: '5',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('5'),
              ),
              CButton(
                buttonText: '6',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('6'),
              ),
              CButton(
                buttonText: '-',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '1',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('1'),
              ),
              CButton(
                buttonText: '2',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('2'),
              ),
              CButton(
                buttonText: '3',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('3'),
              ),
              CButton(
                buttonText: '+',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '0',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                isLarge: true,
                onPressed: () => buttonPressed('0'),
              ),
              CButton(
                buttonText: '.',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('.'),
              ),
              CButton(
                buttonText: '=',
                buttonColor: CColors.equalBtn,
                textColor: CColors.primaryText,
                onPressed: () => buttonPressed('='),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
