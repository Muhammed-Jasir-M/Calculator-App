import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/bmi_calculator/bmi_calculator_screen/reusable_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/bmi_calculator_screen/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CTextValueSliderAndButtonCard extends StatelessWidget {
  const CTextValueSliderAndButtonCard({
    super.key,
    required this.value,
    required this.text,
    required this.unit,
    required this.onValueChanged,
    this.showButton = false,
    this.showSlider = false,
  });

  final String text, unit;
  final int value;
  final Function(int) onValueChanged;
  final bool showButton, showSlider;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CReusableCard(
        bgColor: CColors.cardBgColor,
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                color: CColors.iconTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Text(unit),
              ],
            ),
            if (showButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CRoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      onValueChanged(value - 1);
                    },
                  ),
                  const SizedBox(width: 10),
                  CRoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      onValueChanged(value + 1);
                    },
                  ),
                ],
              ),
            if (showSlider)
              SliderTheme(
                data: const SliderThemeData(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 26.0),
                ),
                child: Slider(
                  value: value.toDouble(),
                  min: 100,
                  max: 300,
                  onChanged: (double newValue) {
                    onValueChanged(newValue.round());
                  },
                  activeColor: CColors.activeSliderColor,
                  inactiveColor: CColors.inActiveSliderColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
