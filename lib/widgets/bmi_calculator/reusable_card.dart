import 'package:flutter/material.dart';

class CReusableCard extends StatelessWidget {
  const CReusableCard({
    super.key,
    required this.bgColor,
    this.child,
    this.width,
    this.onTap,
  });

  final Color bgColor;
  final Widget? child;
  final double? width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: child,
      ),
    );
  }
}
