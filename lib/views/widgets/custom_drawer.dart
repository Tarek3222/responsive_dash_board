import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/build_drawer_items.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.75,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesUserImage,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          BuildDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                DrawerItem(
                  item: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSetting2),
                ),
                DrawerItem(
                  item: DrawerItemModel(
                      title: 'Logout', image: Assets.imagesLogout),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
