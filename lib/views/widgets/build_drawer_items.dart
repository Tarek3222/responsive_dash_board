import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class BuildDrawerItems extends StatefulWidget {
  const BuildDrawerItems({super.key});

  @override
  State<BuildDrawerItems> createState() => _BuildDrawerItemsState();
}

class _BuildDrawerItemsState extends State<BuildDrawerItems> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesTransaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWallet2,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesInvestment2,
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: DrawerItem(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          isSelected: selectedIndex == index,
          item: drawerItems[index],
        ),
      ),
    );
  }
}
