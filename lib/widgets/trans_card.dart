import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/trans_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransCard extends StatelessWidget {
  const TransCard({super.key, required this.transModel});
  final TransModel transModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transModel.subtitle,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transModel.isgreen ? Color(0xff7DD97B) : Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
