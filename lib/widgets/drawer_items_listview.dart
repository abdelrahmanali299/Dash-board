import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/models/draweritem_model.dart';
import 'package:responsive_dashboard/widgets/custom_draweritem.dart';

class DrawerItemsListview extends StatefulWidget {
  const DrawerItemsListview({super.key});

  @override
  State<DrawerItemsListview> createState() => _DrawerItemsListviewState();
}

class _DrawerItemsListviewState extends State<DrawerItemsListview> {
  List<DraweritemModel> drawerItems = [
    DraweritemModel(
      image: SvgPicture.asset(Assets.imagesDashboard),
      title: 'Dashboard',
    ),
    DraweritemModel(
      image: SvgPicture.asset(Assets.imagesMyTransctions),
      title: 'My Transaction',
    ),
    DraweritemModel(
      image: SvgPicture.asset(Assets.imagesStatistics),
      title: 'Statistics',
    ),
    DraweritemModel(
      image: SvgPicture.asset(Assets.imagesWalletAccount),
      title: 'Wallet Account',
    ),
    DraweritemModel(
      image: SvgPicture.asset(Assets.imagesMyInvestments),
      title: 'My Investments',
    ),
  ];

  int? activeIndex;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomDraweritem(
              draweritemModel: drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
