import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: SizedBox(
        width: MediaQuery.sizeOf(context).width * .7,
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(children: [AllExpenses(), MyCardSection()]),
        ),
      ),
    );
  }
}
