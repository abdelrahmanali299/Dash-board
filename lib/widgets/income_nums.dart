import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class IncomeNums extends StatelessWidget {
  const IncomeNums({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Color(0xff208CC8),
            ),
          ),
          trailing: Text(
            '40%',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xff208CC8)),
          ),
          title: Text(
            'Design service',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Color(0xff064061)),
          ),
        ),
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Color(0xff208CC8),
            ),
          ),
          trailing: Text(
            '40%',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xff208CC8)),
          ),
          title: Text(
            'Design service',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Color(0xff064061)),
          ),
        ),
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Color(0xff208CC8),
            ),
          ),
          trailing: Text(
            '40%',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xff208CC8)),
          ),
          title: Text(
            'Design service',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Color(0xff064061)),
          ),
        ),
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Color(0xff208CC8),
            ),
          ),
          trailing: Text(
            '40%',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Color(0xff208CC8)),
          ),
          title: Text(
            'Design service',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Color(0xff064061)),
          ),
        ),
      ],
    );
  }
}
