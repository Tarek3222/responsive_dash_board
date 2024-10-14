import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/chart_income.dart';
import 'package:responsive_dash_board/views/widgets/detaild_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizeConfig.width(context) > SizeConfig.desktopBreakpoint &&
            SizeConfig.width(context) < 1700
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetaildIncomeChart(),
            ),
          )
        : const Row(
            children: [
              Expanded(
                child: ChartIncome(),
              ),
              Expanded(
                flex: 4,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
