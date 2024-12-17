import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  const CButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.textColor,
    this.onPressed,
    this.isLarge = false,
  });

  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final bool isLarge;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: isLarge ? screenWidth * 0.4 : screenWidth * 0.2,
      height: 70,
      padding: EdgeInsets.zero,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(buttonColor),
          foregroundColor: WidgetStateProperty.all(textColor),
          shape: WidgetStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
