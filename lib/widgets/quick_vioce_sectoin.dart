import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class QuickVioceSectoin extends StatelessWidget {
  const QuickVioceSectoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xffFAFAFA),
          elevation: 0,
          shape: CircleBorder(),
        ),
      ],
    );
  }
}
