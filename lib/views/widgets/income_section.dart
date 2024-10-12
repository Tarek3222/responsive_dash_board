import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/build_range_options.dart';
import 'package:responsive_dash_board/views/widgets/chart_income.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 16,
      child: Column(
        children: [
          buildIncomeHeader(),
          const Row(
            children: [
              Expanded(
                child: ChartIncome(),
              ),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row buildIncomeHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.textStyleSemiBold20,
        ),
        BuildRangeOptions(),
      ],
    );
  }
}
