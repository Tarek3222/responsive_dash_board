import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  final List<TransactionModel> transactionHistoryList = const [
    TransactionModel(
      title: 'Cash Withdrawal',
      amount: r'$20,129',
      date: '13 Apr, 2022',
      isDeposit: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      amount: r'$2,000',
      date: '13 Apr, 2022 at 3:30 PM',
      isDeposit: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      amount: r'$20,129',
      date: '13 Apr, 2022 at 3:30 PM',
      isDeposit: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionHistoryList
          .map(
            (e) => TransactionItem(
              transactionItem: e,
            ),
          )
          .toList(),
    );
    // return ListView.builder(
    //   itemCount: transactionHistoryList.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) => TransactionItem(
    //     transactionItem: transactionHistoryList[index],
    //   ),
    // );
  }
}
