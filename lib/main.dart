import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/app_router.dart';
import 'package:portfolio/utils/app_theme.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppRouter.pages(),
    );
  }
}
