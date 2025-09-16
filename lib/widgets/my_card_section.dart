import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_pageview.dart';
import 'package:responsive_dashboard/widgets/row_dots.dart';
import 'package:responsive_dashboard/widgets/trans_section.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My card', style: AppStyles.styleSemiBold20(context)),
          MyCardsPageview(pageController: pageController),
          SizedBox(height: 10),
          RowDots(currentPageIndex: currentPageIndex),
          Divider(),
          TransSection(),
          width >= 1000 ? Expanded(child: IncomeSection()) : IncomeSection(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
