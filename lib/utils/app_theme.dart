import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';
import 'package:portfolio/utils/constants.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: FONT_FAMILY,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
        primary: AppColors.PRIMARY_COLOR,
        secondary: AppColors.SECOUNDARY_COLOR,
        onPrimary: AppColors.SECOUNDARY_GRAY_COLOR,
        onSecondary: AppColors.MAIN_GRAY_COLOR,
        primaryContainer: Color(0xff27272A)),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: FONT_FAMILY,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
  );
}
