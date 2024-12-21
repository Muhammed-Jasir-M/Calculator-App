import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
import 'package:calculator_app/widgets/calculator/button.dart';
import 'package:flutter/material.dart';

class CButtonGrid extends StatelessWidget {
  const CButtonGrid({
    super.key,
    required this.buttonPressed,
  });

  final void Function(String) buttonPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = CUtils.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: 'C',
                buttonColor: isDark ? CColors.darkClearBtn : CColors.lightClearBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('C'),
              ),
              CButton(
                buttonText: '%',
                buttonColor: isDark ? CColors.darkOperatorBtn : CColors.lightOperatorBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('%'),
              ),
              CButton(
                buttonText: '÷',
                buttonColor: isDark ? CColors.darkOperatorBtn : CColors.lightOperatorBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('÷'),
              ),
              CButton(
                buttonText: '<',
                buttonColor: isDark ? CColors.darkClearBtn : CColors.lightClearBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('<'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '7',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('7'),
              ),
              CButton(
                buttonText: '8',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('8'),
              ),
              CButton(
                buttonText: '9',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('9'),
              ),
              CButton(
                buttonText: 'x',
                buttonColor: isDark ? CColors.darkOperatorBtn : CColors.lightOperatorBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('x'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '4',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('4'),
              ),
              CButton(
                buttonText: '5',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('5'),
              ),
              CButton(
                buttonText: '6',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('6'),
              ),
              CButton(
                buttonText: '-',
                buttonColor: isDark ? CColors.darkOperatorBtn : CColors.lightOperatorBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '1',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('1'),
              ),
              CButton(
                buttonText: '2',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('2'),
              ),
              CButton(
                buttonText: '3',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('3'),
              ),
              CButton(
                buttonText: '+',
                buttonColor: isDark ? CColors.darkOperatorBtn : CColors.lightOperatorBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CButton(
                buttonText: '0',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                isLarge: true,
                onPressed: () => buttonPressed('0'),
              ),
              CButton(
                buttonText: '.',
                buttonColor: isDark ? CColors.darkNumberBtn : CColors.lightNumberBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('.'),
              ),
              CButton(
                buttonText: '=',
                buttonColor: isDark ? CColors.darkEqualBtn : CColors.lightEqualBtn,
                textColor: isDark ? CColors.darkFontColor : CColors.lightFontColor,
                onPressed: () => buttonPressed('='),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
