import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.item, required this.isSelected});
  final AllExpensesItemModel item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: isSelected ? const Color(0xff4EB7F2) : const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: item.image,
            isSelected: isSelected,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: isSelected
                  ? AppStyles.textStyleSemiBold16(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.textStyleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.date,
              style: isSelected
                  ? AppStyles.textStyleRegular14(context).copyWith(
                      color: const Color(0xffFAFAFA),
                    )
                  : AppStyles.textStyleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.amount,
              style: isSelected
                  ? AppStyles.textStyleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : AppStyles.textStyleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
