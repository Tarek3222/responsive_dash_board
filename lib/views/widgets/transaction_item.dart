import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItem});
  final TransactionModel transactionItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: buildListTile(context),
    );
  }

  ListTile buildListTile(context) {
    return ListTile(
      title: Text(
        transactionItem.title,
        style: AppStyles.textStyleSemiBold16(context),
      ),
      subtitle: Text(
        transactionItem.date,
        style: AppStyles.textStyleRegular16(context).copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
      trailing: Text(
        transactionItem.amount,
        style: AppStyles.textStyleMedium16(context).copyWith(
            color: transactionItem.isDeposit
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B)),
      ),
    );
  }
}
