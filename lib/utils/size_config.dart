import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopBreakpoint = 1200.0;
  static const double tabletBreakpoint = 800;

  static double width(context) => MediaQuery.of(context).size.width;

  static double height(context) => MediaQuery.of(context).size.height;
}
