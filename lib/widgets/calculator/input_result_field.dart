import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/constants/utils.dart';
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
    final isDark = CUtils.isDarkMode(context);

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
                style: TextStyle(
                  color: isDark ? CColors.darkFontColor : CColors.lightFontColor,
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
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Text(
                  result,
                  style: TextStyle(
                  color: isDark ? CColors.darkFontColor : CColors.lightFontColor,
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
