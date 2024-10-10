import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text('My Card', style: AppStyles.textStyleSemiBold20),
        ),
        SizedBox(
          height: 2,
        ),
        MyCard(),
        SizedBox(
          height: 4,
        ),
        DotsIndicator(),
      ],
    );
  }
}
