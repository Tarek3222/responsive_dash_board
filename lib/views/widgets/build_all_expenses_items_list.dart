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
        for (int i = 0; i < allExpensesItemModelList.length; i++)
          Expanded(
            child: Padding(
              padding: i == 2
                  ? const EdgeInsets.all(0)
                  : const EdgeInsets.only(right: 12),
              child: InkWell(
                onTap: () {
                  if (selectedIndex != i) {
                    setState(() {
                      selectedIndex = i;
                    });
                  }
                },
                child: AnimatedCrossFade(
                  crossFadeState: selectedIndex == i
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 300),
                  firstChild: AllExpensesItem(
                    isSelected: selectedIndex == i,
                    item: allExpensesItemModelList[i],
                  ),
                  secondChild: AllExpensesItem(
                    isSelected: selectedIndex == i,
                    item: allExpensesItemModelList[i],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
