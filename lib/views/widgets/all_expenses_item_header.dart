// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isSelected});
  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 55),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected
                      ? Colors.white.withOpacity(0.1)
                      : const Color(0xffFAFAFA),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    color: isSelected ? Colors.white : const Color(0xff4EB7F2),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_sharp,
          size: 18,
          color: isSelected ? Colors.white : const Color(0xff064061),
        ),
      ],
    );
  }
}
