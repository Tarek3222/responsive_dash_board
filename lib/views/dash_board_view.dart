import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';

import 'package:responsive_dash_board/views/widgets/desktop_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizeConfig.width(context) < SizeConfig.tabletBreakpoint
          ? const CustomDrawer()
          : null,
      appBar: SizeConfig.width(context) < SizeConfig.tabletBreakpoint
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xff4EB7F2),
              title: const Text('Dashboard'),
              centerTitle: true,
            )
          : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        desktopLayout: (context) => const DesktopLayoutWidget(),
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
      ),
    );
  }
}
