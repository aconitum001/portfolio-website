import 'package:flutter/material.dart';
import 'package:portfolio/widgets/intro_container.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return ListView(
      children: [
        IntroContainer(width: width),
      ],
    );
  }
}
