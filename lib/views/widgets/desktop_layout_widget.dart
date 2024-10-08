import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: AllExpenses(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
