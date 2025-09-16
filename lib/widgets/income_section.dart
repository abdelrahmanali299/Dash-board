import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/income_nums.dart';
import 'package:responsive_dashboard/widgets/piechart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Income',
              style: AppStyles.styleSemiBold20(
                context,
              ).copyWith(color: Color(0xff064061)),
            ),
            DropdownButton(
              items: [
                DropdownMenuItem(child: Text('Monthly')),
                // DropdownMenuItem(child: Text('Monthly')),
                // DropdownMenuItem(child: Text('Monthly')),
              ],
              onChanged: (val) {},
            ),
          ],
        ),
        SizedBox(height: 50),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: AspectRatio(aspectRatio: 1.5, child: Piechart()),
        ),
      ],
    );
  }
}
