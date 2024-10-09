import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(20),
        hintStyle: AppStyles.textStyleRegular16
            .copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}
