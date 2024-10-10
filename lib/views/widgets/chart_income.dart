import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartIncome extends StatefulWidget {
  const ChartIncome({super.key});

  @override
  State<ChartIncome> createState() => _ChartIncomeState();
}

class _ChartIncomeState extends State<ChartIncome> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
        swapAnimationDuration: const Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            if (pieTouchResponse == null ||
                pieTouchResponse.touchedSection == null) {
              return;
            }
            touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
            setState(() {});
          },
          enabled: true),
      sections: [
        PieChartSectionData(
          color: const Color(0xff208CC8),
          showTitle: false,
          value: 40,
          radius: touchedIndex == 0 ? 20 : 10,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          showTitle: false,
          value: 22,
          radius: touchedIndex == 1 ? 20 : 10,
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          showTitle: false,
          value: 20,
          radius: touchedIndex == 2 ? 20 : 10,
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          showTitle: false,
          value: 25,
          radius: touchedIndex == 3 ? 20 : 10,
        ),
      ],
    );
  }
}
