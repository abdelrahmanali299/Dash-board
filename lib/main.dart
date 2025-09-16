import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dash_board_view.dart';

void main() {
  runApp(const DashBoard());
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoardView(),
    );
  }
}