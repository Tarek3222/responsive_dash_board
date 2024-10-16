import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: _buildListTile(context),
    );
  }

  Widget _buildListTile(context) {
    return ListTile(
      leading: SvgPicture.asset(
        userInfoModel.image,
      ),
      title: Text(
        userInfoModel.title,
        style: AppStyles.textStyleSemiBold16(context),
      ),
      subtitle: Text(
        userInfoModel.subtitle,
        style: AppStyles.textStyleRegular12(context),
      ),
    );
  }
}
