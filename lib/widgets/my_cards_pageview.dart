import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card.dart';

class MyCardsPageview extends StatelessWidget {
  const MyCardsPageview({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(3, (index) {
        return CardName();
      }),
    );
  }
}
