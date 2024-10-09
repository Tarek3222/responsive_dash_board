import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesMaskGroup),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 12),
              title: Text(
                'Name card',
                style: AppStyles.textStyleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle:
                  const Text('Syah Bandi', style: AppStyles.textStyleMedium20),
              trailing: const Icon(
                Icons.image,
                color: Color(0xff292D32),
                size: 30,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.textStyleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.textStyleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
