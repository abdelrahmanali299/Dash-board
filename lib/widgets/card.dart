import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CardName extends StatelessWidget {
  const CardName({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff4EB7F2),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular14(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
