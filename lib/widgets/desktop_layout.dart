import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/widgets/custom_desktop_app_bar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return ListView(
      children: [
        Container(
          color: Theme.of(context).colorScheme.secondary,
          padding: EdgeInsets.symmetric(horizontal: width * 0.025),
          child: const Column(
            children: [
              Gap(24),
              CustomDesktopAppBar(),
            ],
          ),
        )
      ],
    );
  }
}
