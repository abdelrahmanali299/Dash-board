import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/models/lastest_trans_model.dart';
import 'package:responsive_dashboard/widgets/custom_list_tile.dart';
import 'package:responsive_dashboard/widgets/text_forms.dart';

class LastestTransSection extends StatelessWidget {
  const LastestTransSection({super.key});
  static List<LastestTransModel> items = [
    LastestTransModel(
      image: Assets.imagesAvatar1,
      title: 'Abdelrahman ali',
      subTitle: 'bedoalie3494@gmail.com',
    ),
    LastestTransModel(
      image: Assets.imagesAvatar3,
      title: 'Abdelrahman ali',
      subTitle: 'bedoalie3494@gmail.com',
    ),
    LastestTransModel(
      image: Assets.imagesAvatar2,
      title: 'Abdelrahman ali',
      subTitle: 'bedoalie3494@gmail.com',
    ),
    LastestTransModel(
      image: Assets.imagesAvatar3,
      title: 'Abdelrahman ali',
      subTitle: 'bedoalie3494@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...items.map(
                (e) => IntrinsicWidth(
                  child: Card(
                    elevation: 0,
                    color: Color(0xffFAFAFA),
                    child: CustomListTileUserInfo(
                      image: e.image,
                      title: e.title,
                      subTitle: e.subTitle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(height: 48),
        TextForms(),
      ],
    );
  }
}
