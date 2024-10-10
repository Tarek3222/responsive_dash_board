import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_section.dart';

class MyCardAndTransactionHistoryAndIncome extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 4,
        ),
        MyCardAndTransactionSection(),
        SizedBox(
          height: 4,
        ),
        Expanded(
          child: IncomeSection(),
        ),
      ],
    );
  }
}
