import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/build_all_expenses_items_list.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 16,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 10,
          ),
          BuildAllExpensesItemsList(),
        ],
      ),
    );
  }
}
