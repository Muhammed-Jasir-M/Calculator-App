import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
import 'package:calculator_app/widgets/bmi_calculator/reusable_card.dart';
import 'package:calculator_app/widgets/bmi_calculator/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CTextValueSliderAndButtonCard extends StatelessWidget {
  const CTextValueSliderAndButtonCard({
    super.key,
    required this.text,
    required this.value,
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
    final isDark = CUtils.isDarkMode(context);

    return Expanded(
      child: CReusableCard(
        bgColor: isDark ? CColors.darkCardBgColor : CColors.lightCardBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                color: isDark
                    ? CColors.darkIconTextColor
                    : CColors.lightIconTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  value.toString(),
                  style: const TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  unit,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ],
            ),

            // Add & Minus Button
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
                  CRoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      onValueChanged(value + 1);
                    },
                  ),
                ],
              ),

            // Slider Component
            if (showSlider)
              SliderTheme(
                data: const SliderThemeData(
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 26.0),
                ),
                child: Slider(
                  value: value.toDouble(),
                  min: 50,
                  max: 260,
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
