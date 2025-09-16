import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick_invioce_body.dart';

class QuickInvioce extends StatelessWidget {
  const QuickInvioce({super.key, this.padding});
  final padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      color: Colors.white,
      child: QuickInvioceBody(),
    );
  }
}
