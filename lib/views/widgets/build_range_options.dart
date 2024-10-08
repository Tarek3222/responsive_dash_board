import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class BuildRangeOptions extends StatelessWidget {
  const BuildRangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: const Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.textStyleMedium16,
          ),
          SizedBox(
            width: 18,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 26,
            color: Color(0xff064061),
          )
        ],
      ),
    );
  }
}
