import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    required this.Padding,
  });
  final child, Padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: Padding,
      child: child,
    );
  }
}
