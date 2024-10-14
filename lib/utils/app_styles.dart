import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle textStyleRegular16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
        color: const Color(0xff064061),
      );
  static TextStyle textStyleMedium16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
        color: const Color(0xff064061),
      );
  static TextStyle textStyleSemiBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064061),
      );
  static TextStyle textStyleBold16(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w700,
        color: const Color(0xff4EB7F2),
      );
  static TextStyle textStyleSemiBold20(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064061),
      );
  static TextStyle textStyleMedium20(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        color: const Color(0xffFFFFFF),
      );
  static TextStyle textStyleRegular12(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
      );
  static TextStyle textStyleSemiBold24(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w600,
        color: const Color(0xff4EB7F2),
      );
  static TextStyle textStyleRegular14(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
      );
  static TextStyle textStyleSemiBold18(context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w600,
        color: const Color(0xff4EB7F2),
      );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = SizeConfig.width(context);
  if (width < SizeConfig.tabletBreakpoint) {
    return width / 550;
  } else if (width < SizeConfig.desktopBreakpoint) {
    return width / 1000;
  } else {
    return width / 1550;
  }
}
