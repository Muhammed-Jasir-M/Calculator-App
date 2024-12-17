import 'package:calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CInputResultField extends StatelessWidget {
  const CInputResultField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.centerRight,
          width: double.infinity,
          child: const Text(
            '0x5',
            style: TextStyle(
              color: CColors.primaryText,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.centerRight,
          width: double.infinity,
          child: const Text(
            '000',
            style: TextStyle(
              color: CColors.primaryText,
              fontSize: 45,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
