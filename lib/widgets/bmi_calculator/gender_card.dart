import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
import 'package:calculator_app/widgets/bmi_calculator/icon_details.dart';
import 'package:calculator_app/widgets/bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class CGenderCard extends StatelessWidget {
  const CGenderCard({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.icon,
    required this.text,
  });

  final bool isSelected;
  final VoidCallback onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isDark = CUtils.isDarkMode(context);

    return Expanded(
      child: CReusableCard(
        onTap: onTap,
        bgColor: isDark
            ? (isSelected
                ? CColors.darkCardBgColor
                : CColors.darkInActiveCardBgColor)
            : (isSelected
                ? CColors.lightCardBgColor
                : CColors.lightInActiveCardBgColor),
        child: CIconDetails(icon: icon, text: text),
      ),
    );
  }
}
