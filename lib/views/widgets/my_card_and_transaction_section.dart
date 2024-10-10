import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 16,
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 8,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
