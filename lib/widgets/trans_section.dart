import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/trans_history_listview.dart';

class TransSection extends StatelessWidget {
  const TransSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: Color(0xff4EB7F2)),
            ),
          ],
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        TransHistoryListview(),
      ],
    );
  }
}
