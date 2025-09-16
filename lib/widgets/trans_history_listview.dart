import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/trans_model.dart';
import 'package:responsive_dashboard/widgets/trans_card.dart';

class TransHistoryListview extends StatelessWidget {
  const TransHistoryListview({super.key});
  static const items = [
    TransModel(
      title: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isgreen: false,
    ),
    TransModel(
      title: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isgreen: true,
    ),
    TransModel(
      title: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022 ',
      amount: r'$20,129',
      isgreen: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransCard(transModel: e)).toList(),
    );
  }
}
