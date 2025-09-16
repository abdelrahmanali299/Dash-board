import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';

class TextFieldTitle extends StatelessWidget {
  const TextFieldTitle({super.key, required this.hint, required this.title});
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        CustomTextField(hint: hint),
      ],
    );
  }
}
