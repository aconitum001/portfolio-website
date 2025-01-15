import 'package:flutter/material.dart';
import 'package:portfolio/utils/app_colors.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "",
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: AppColors.PRIMARY_COLOR,
      secondary: AppColors.SECOUNDARY_COLOR,
      onPrimary: AppColors.SECOUNDARY_GRAY_COLOR,
      onSecondary: AppColors.MAIN_GRAY_COLOR,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "",
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
  );
}
