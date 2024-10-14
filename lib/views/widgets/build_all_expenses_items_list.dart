import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class BuildAllExpensesItemsList extends StatefulWidget {
  const BuildAllExpensesItemsList({super.key});

  @override
  State<BuildAllExpensesItemsList> createState() =>
      _BuildAllExpensesItemsListState();
}

class _BuildAllExpensesItemsListState extends State<BuildAllExpensesItemsList> {
  final List<AllExpensesItemModel> allExpensesItemModelList = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      amount: '\$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      amount: '\$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      amount: '\$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectedIndex != 0) {
                setState(() {
                  selectedIndex = 0;
                });
              }
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              item: allExpensesItemModelList[0],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectedIndex != 1) {
                setState(() {
                  selectedIndex = 1;
                });
              }
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              item: allExpensesItemModelList[1],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              if (selectedIndex != 2) {
                setState(() {
                  selectedIndex = 2;
                });
              }
            },
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              item: allExpensesItemModelList[2],
            ),
          ),
        ),
      ],
    );
  }
}
