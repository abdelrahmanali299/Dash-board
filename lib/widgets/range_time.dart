import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangeTime extends StatelessWidget {
  const RangeTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16(context)),
          SizedBox(width: 18),
          Transform.rotate(
            angle: -1.571,
            child: Icon(Icons.arrow_back_ios, size: 18),
          ),
        ],
      ),
    );
  }
}
