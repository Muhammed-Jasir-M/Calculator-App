import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
import 'package:flutter/material.dart';

class CIconDetails extends StatelessWidget {
  const CIconDetails({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isDark = CUtils.isDarkMode(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 70.0),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color:
                isDark ? CColors.darkIconTextColor : CColors.lightIconTextColor,
          ),
        ),
      ],
    );
  }
}
