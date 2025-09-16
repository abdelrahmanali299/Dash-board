import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/lastest_trans_section.dart';
import 'package:responsive_dashboard/widgets/quick_vioce_sectoin.dart';

class QuickInvioceBody extends StatelessWidget {
  const QuickInvioceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickVioceSectoin(),
        SizedBox(height: 20),
        Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 5),
        LastestTransSection(),
      ],
    );
  }
}
