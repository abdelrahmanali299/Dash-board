import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/text_field_title.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TextFieldTitle(
                hint: 'Customer name',
                title: 'Type customer name',
              ),
            ),
            Expanded(
              child: TextFieldTitle(
                hint: 'Customer email',
                title: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TextFieldTitle(
                hint: 'Item name',
                title: 'Type customer name',
              ),
            ),
            Expanded(child: TextFieldTitle(hint: 'Item mount', title: 'USD')),
          ],
        ),
      ],
    );
  }
}
