import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomListTileUserInfo extends StatelessWidget {
  const CustomListTileUserInfo({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(title),
      ),
      titleTextStyle: AppStyles.styleSemiBold16(context),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(subTitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
