class TransactionModel {
  final String title;
  final String date;
  final String amount;
  final bool isDeposit;

  const TransactionModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isDeposit,
  });
}
