import 'package:calculator_app/constants/colors.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 70.0),
        const SizedBox(height: 15.0),
        Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: CColors.iconTextColor,
          ),
        ),
      ],
    );
  }
}