import 'package:flutter/material.dart';

class CReusableCard extends StatelessWidget {
  const CReusableCard({
    super.key,
    required this.bgColor,
    this.child,
  });

  final Color bgColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: child,
    );
  }
}
