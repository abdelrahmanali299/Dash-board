import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/draweritem_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomDraweritem extends StatelessWidget {
  const CustomDraweritem({
    super.key,
    required this.draweritemModel,
    required this.isActive,
  });
  final DraweritemModel draweritemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CustomActiveDrawerItem(draweritemModel: draweritemModel)
        : CustomInActiveDrawerItem(draweritemModel: draweritemModel);
  }
}

class CustomActiveDrawerItem extends StatelessWidget {
  const CustomActiveDrawerItem({super.key, required this.draweritemModel});
  final DraweritemModel draweritemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: draweritemModel.image,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(draweritemModel.title),
      ),
      titleTextStyle: AppStyles.styleBold16(
        context,
      ).copyWith(color: const Color(0xFF4EB7F2)),
      trailing: Container(color: const Color(0xFF4EB7F2), width: 3.27),
    );
  }
}

class CustomInActiveDrawerItem extends StatelessWidget {
  const CustomInActiveDrawerItem({super.key, required this.draweritemModel});
  final DraweritemModel draweritemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: draweritemModel.image,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(draweritemModel.title),
      ),
      titleTextStyle: AppStyles.styleRegular16(
        context,
      ).copyWith(color: Color(0xff064061)),
    );
  }
}
