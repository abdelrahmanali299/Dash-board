import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 24),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(flex: 2, child: AllExpenses()),
                      Expanded(child: MyCard()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
