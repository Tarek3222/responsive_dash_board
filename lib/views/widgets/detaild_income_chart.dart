import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetaildIncomeChart extends StatefulWidget {
  const DetaildIncomeChart({super.key});

  @override
  State<DetaildIncomeChart> createState() => _DetaildChartIncomeState();
}

class _DetaildChartIncomeState extends State<DetaildIncomeChart> {
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
          titlePositionPercentageOffset: touchedIndex == 0 ? 1.5 : null,
          color: const Color(0xff208CC8),
          title: touchedIndex == 0 ? 'Design service' : '40%',
          value: 40,
          titleStyle: AppStyles.textStyleMedium16(context)
              .copyWith(color: touchedIndex == 0 ? null : Colors.white),
          radius: touchedIndex == 0 ? 40 : 28,
        ),
        PieChartSectionData(
          color: const Color(0xffE2DECD),
          titlePositionPercentageOffset: touchedIndex == 1 ? 1.6 : null,
          title: touchedIndex == 1 ? 'Others' : '22%',
          value: 22,
          radius: touchedIndex == 1 ? 40 : 28,
          titleStyle: AppStyles.textStyleMedium16(context)
              .copyWith(color: touchedIndex == 1 ? null : Colors.white),
        ),
        PieChartSectionData(
          color: const Color(0xff064061),
          title: touchedIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          titlePositionPercentageOffset: touchedIndex == 2 ? 1.7 : null,
          radius: touchedIndex == 2 ? 40 : 28,
          titleStyle: AppStyles.textStyleMedium16(context)
              .copyWith(color: touchedIndex == 2 ? null : Colors.white),
        ),
        PieChartSectionData(
          color: const Color(0xff4EB7F2),
          title: touchedIndex == 3 ? 'Design product' : '25%',
          titlePositionPercentageOffset: touchedIndex == 3 ? 1.3 : null,
          value: 25,
          radius: touchedIndex == 3 ? 40 : 28,
          titleStyle: AppStyles.textStyleMedium16(context)
              .copyWith(color: touchedIndex == 3 ? null : Colors.white),
        ),
      ],
    );
  }
}
