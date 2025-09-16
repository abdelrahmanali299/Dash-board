import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants/assets.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/all_expenses_headers.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/widgets/buttons_section.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/quick_invioce.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomContainer(
            Padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesHeaders(),
                  SizedBox(height: 16),
                  Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: AllExpensesItem(
                          allExpensesItemModel: AllExpensesItemModel(
                            image: Assets.imagesExpenses,
                            text: 'Income',
                            date: 'April 2022',
                            price: r'$22.129',
                          ),
                        ),
                      ),
                      Expanded(
                        child: AllExpensesItem(
                          allExpensesItemModel: AllExpensesItemModel(
                            image: Assets.imagesExpenses,
                            text: 'Income',
                            date: 'April 2022',
                            price: r'$22.129',
                          ),
                        ),
                      ),
                      Expanded(
                        child: AllExpensesItem(
                          allExpensesItemModel: AllExpensesItemModel(
                            image: Assets.imagesExpenses,
                            text: 'Income',
                            date: 'April 2022',
                            price: r'$22.129',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          QuickInvioce(padding: EdgeInsets.all(20)),
          ButtonsSection(),
        ],
      ),
    );
  }
}
