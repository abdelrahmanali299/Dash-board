import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/models/draweritem_model.dart';
import 'package:responsive_dashboard/widgets/custom_draweritem.dart';
import 'package:responsive_dashboard/widgets/custom_list_tile.dart';
import 'package:responsive_dashboard/widgets/drawer_items_listview.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              color: Color(0xffFAFAFA),
              child: CustomListTileUserInfo(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                CustomInActiveDrawerItem(
                  draweritemModel: DraweritemModel(
                    image: SvgPicture.asset(Assets.imagesSettings),
                    title: 'Setting system',
                  ),
                ),
                CustomInActiveDrawerItem(
                  draweritemModel: DraweritemModel(
                    image: SvgPicture.asset(Assets.imagesLogout),
                    title: 'Logout account',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
