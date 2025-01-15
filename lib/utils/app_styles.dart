import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle style20Bold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.bold,
      color: color,
      height: height,
    );
  }

  static TextStyle style32Bold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.bold,
      color: color,
      height: height,
    );
  }

  static TextStyle style12SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w600,
      color: color,
      height: height,
    );
  }

  static TextStyle style16SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: color,
      height: height,
    );
  }

  static TextStyle style20SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: color,
      height: height,
    );
  }

  static TextStyle style28SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.w600,
      color: color,
      height: height,
    );
  }

  static TextStyle style20ExtraBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w800,
      color: color,
      height: height,
    );
  }

  static TextStyle style24SemiBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: color,
      height: height,
    );
  }

  static TextStyle style24ExtraBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w800,
      color: color,
      height: height,
    );
  }

  static TextStyle style16Regular(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.normal,
      color: color,
      height: height,
    );
  }

  static TextStyle style48ExtraBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 48),
      fontWeight: FontWeight.w800,
      color: color,
      height: height,
    );
  }

  static TextStyle style48Regular(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 48),
      fontWeight: FontWeight.normal,
      color: color,
      height: height,
    );
  }

  static TextStyle style28ExtraBold(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.w800,
      color: color,
      height: height,
    );
  }

  static TextStyle style28Regular(
    BuildContext context, {
    Color? color,
    double? height,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.normal,
      color: color,
      height: height,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactore = getScaleFactor(context);
  double responsiveFontSize = scaleFactore * fontSize;

  double upperLimit = fontSize * 1.2;
  double lowerLimit = fontSize * 0.8;

  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tabletBreakPoint) {
    return width / 800;
  } else if (width < SizeConfig.pcBreakPoint) {
    return width / 1300;
  } else {
    return width / 1700;
  }
}
