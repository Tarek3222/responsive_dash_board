import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/views/widgets/desktop_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => const DesktopLayoutWidget(),
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
      ),
    );
  }
}
