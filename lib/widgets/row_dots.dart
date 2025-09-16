import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class RowDots extends StatelessWidget {
  const RowDots({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: List.generate(3, (index) {
        return CustomDot(isActive: index == currentPageIndex);
      }),
    );
  }
}
