import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.item, this.onTap, this.isSelected = false});
  final DrawerItemModel item;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: isSelected
            ? AppStyles.textStyleBold16
            : AppStyles.textStyleRegular16,
      ),
      trailing: isSelected
          ? const VerticalDivider(
              thickness: 3,
              color: Color(0xff4EB7F2),
            )
          : null,
    );
  }
}
