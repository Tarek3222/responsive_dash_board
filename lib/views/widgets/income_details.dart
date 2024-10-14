import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  final List<IncomeItemModel> items = const [
    IncomeItemModel(
      title: 'Design service',
      percentage: '40%',
      color: Color(0xff208CC8),
    ),
    IncomeItemModel(
      title: 'Design product',
      percentage: '25%',
      color: Color(0xff4EB7F2),
    ),
    IncomeItemModel(
      title: 'Product royalti',
      percentage: '20%',
      color: Color(0xff064061),
    ),
    IncomeItemModel(
      title: 'Others',
      percentage: '22%',
      color: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => IncomeDetailsItem(item: item),
          )
          .toList(),
    );
  }
}

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.item});
  final IncomeItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: item.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        item.title,
        style: AppStyles.textStyleRegular16(context),
      ),
      trailing: Text(
        item.percentage,
        style: AppStyles.textStyleMedium16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
  }
}
