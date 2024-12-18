import 'package:calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CRoundIconButton extends StatelessWidget {
  const CRoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      shape: const CircleBorder(),
      fillColor: CColors.floatingButtonBgColor,
      constraints: const BoxConstraints.tightFor(width: 45.0, height: 45.0),
      child: Icon(icon, color: CColors.floatingButtonTextColor),
    );
  }
}
