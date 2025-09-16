import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: MyCardSection());
  }
}
