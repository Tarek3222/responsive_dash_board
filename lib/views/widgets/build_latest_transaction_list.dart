import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class BuildLatestTransactionList extends StatelessWidget {
  const BuildLatestTransactionList({super.key});
  static const List<UserInfoModel> users = [
    UserInfoModel(
      image: Assets.imagesAvatar,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users
            .map(
              (e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: e),
              ),
            )
            .toList(),
      ),
    );
  }
}
    // for items have big number of items
    // return SizedBox(
    //   height: 45,
    //   child: ListView.builder(
    //     itemCount: users.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTile(
    //         userInfoModel: users[index],
    //       ),
    //     ),
    //   ),
    // );
