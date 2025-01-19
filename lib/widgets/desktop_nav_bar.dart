import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/app_scroll_controller.dart';
import 'package:portfolio/utils/app_styles.dart';

class DesktopNavBar extends StatelessWidget {
  DesktopNavBar({super.key});

  final AppScrollController desktopScrollController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            desktopScrollController.scrollTo(5);
          },
          child: Text(
            "About Me",
            style: AppStyles.style20SemiBold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const Gap(5),
        TextButton(
          onPressed: () {
            desktopScrollController.scrollTo(3);
          },
          child: Text(
            "Skills",
            style: AppStyles.style20SemiBold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const Gap(5),
        TextButton(
          onPressed: () {
            desktopScrollController.scrollTo(4);
          },
          child: Text(
            "Experience",
            style: AppStyles.style20SemiBold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const Gap(5),
        TextButton(
          onPressed: () {
            desktopScrollController.scrollTo(6);
          },
          child: Text(
            "Project",
            style: AppStyles.style20SemiBold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        const Gap(5),
        TextButton(
          onPressed: () {
            desktopScrollController.scrollTo(8);
          },
          child: Text(
            "Contact me",
            style: AppStyles.style20SemiBold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
