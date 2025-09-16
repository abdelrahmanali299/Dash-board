import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonText: 'Add more details',
              colorText: Color(0xff4EB7F2),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: CustomButton(
              buttonText: 'Send Money',
              color: Color(0xff4EB7F2),
            ),
          ),
        ],
      ),
    );
  }
}
