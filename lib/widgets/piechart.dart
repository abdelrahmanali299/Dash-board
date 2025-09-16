import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class Piechart extends StatefulWidget {
  const Piechart({super.key});

  @override
  State<Piechart> createState() => _PiechartState();
}

class _PiechartState extends State<Piechart> {
  int currentTouchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pietouchresponse) {
            currentTouchedIndex =
                pietouchresponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: 1,
            title: currentTouchedIndex == 0 ? 'dsfsadfsdf' : null,
            radius: currentTouchedIndex == 0 ? 50 : 40,
            value: 40,
            color: Color(0xff208CC8),
            // showTitle: false,
            titleStyle: AppStyles.styleSemiBold20(context),
          ),
          PieChartSectionData(
            value: 25,
            radius: currentTouchedIndex == 1 ? 50 : 40,
            title: currentTouchedIndex == 1 ? 'dsfsadfsdf' : null,

            color: Color(0xff4EB7F2),
            // showTitle: false,
            titleStyle: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: Colors.white),
          ),
          PieChartSectionData(
            value: 22,
            radius: currentTouchedIndex == 2 ? 50 : 40,
            title: currentTouchedIndex == 2 ? 'dsfsadfsdf' : null,
            titleStyle: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: Colors.white),
            color: Color(0xffE2DECD),
          ),
          PieChartSectionData(
            radius: currentTouchedIndex == 3 ? 50 : 40,
            value: 20,
            color: Color(0xff064061),
            title: currentTouchedIndex == 3 ? 'dsfsadfsdf' : null,
            titleStyle: AppStyles.styleSemiBold20(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
