import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Transactionheader(),
        const SizedBox(
          height: 2,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.textStyleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}

class Transactionheader extends StatelessWidget {
  const Transactionheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Transaction history', style: AppStyles.textStyleSemiBold20),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.textStyleMedium16.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
