import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/button.dart';
import 'package:flutter/material.dart';

class CButtonGrid extends StatelessWidget {
  const CButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: 'C',
                buttonColor: CColors.clearBtn,
                textColor: CColors.primaryText,
              ),    
              CButton(
                buttonText: '%',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '/',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: 'D',
                buttonColor: CColors.clearBtn,
                textColor: CColors.primaryText,
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
              ),
              CButton(
                buttonText: '8',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '9',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: 'x',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
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
              ),
              CButton(
                buttonText: '5',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '6',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '-',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
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
              ),
              CButton(
                buttonText: '2',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '3',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '+',
                buttonColor: CColors.operatorBtn,
                textColor: CColors.primaryText,
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
              ),
              CButton(
                buttonText: '.',
                buttonColor: CColors.primaryBtn,
                textColor: CColors.primaryText,
              ),
              CButton(
                buttonText: '=',
                buttonColor: CColors.equalBtn,
                textColor: CColors.primaryText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
