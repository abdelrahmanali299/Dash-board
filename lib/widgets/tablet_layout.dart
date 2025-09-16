import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(children: [AllExpenses(), MyCardSection()]),
            ),
          ),
        ],
      ),
    );
  }
}
