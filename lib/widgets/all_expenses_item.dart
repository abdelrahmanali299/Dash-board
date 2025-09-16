import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Color(0xffF1F1F1)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 50),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFAFAFA),
                        ),

                        child: Center(
                          child: SvgPicture.asset(allExpensesItemModel.image),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: -1.571 * 2,
                  child: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            SizedBox(height: 16),

            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesItemModel.text,
                style: AppStyles.styleSemiBold16(context),
              ),
            ),
            SizedBox(height: 8),

            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14(context),
              ),
            ),
            SizedBox(height: 10),

            FittedBox(
              fit: BoxFit.scaleDown,

              child: Text(
                allExpensesItemModel.price,
                style: AppStyles.styleSemiBold24(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
