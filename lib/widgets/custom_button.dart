import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.buttonText, this.colorText, this.color});
  final buttonText, colorText, color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: color,
        padding: EdgeInsets.all(20),
      ),

      onPressed: () {},
      child: Text(
        buttonText,
        style: AppStyles.styleSemiBold18(context).copyWith(color: colorText),
      ),
    );
  }
}
