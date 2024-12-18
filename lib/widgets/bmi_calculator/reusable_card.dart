import 'package:flutter/material.dart';

class CReusableCard extends StatelessWidget {
  const CReusableCard({
    super.key,
    required this.bgColor,
    this.child,
    this.width,
  });

  final Color bgColor;
  final Widget? child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Container(
        margin: const EdgeInsets.all(10.0),
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
