import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/range_time.dart';

class AllExpensesHeaders extends StatelessWidget {
  const AllExpensesHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeTime(),
      ],
    );
  }
}
