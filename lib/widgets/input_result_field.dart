import 'package:calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CInputResultField extends StatelessWidget {
  const CInputResultField({
    super.key,
    required this.input,
    required this.result,
  });

  final String input, result;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 28),

        // Display Input
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Text(
                input,
                style: const TextStyle(
                  color: CColors.primaryText,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // Display Result
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            reverse: true,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Text(
                  result,
                  style: const TextStyle(
                    color: CColors.primaryText,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
