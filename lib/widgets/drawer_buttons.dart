import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/app_scroll_controller.dart';
import 'package:portfolio/utils/app_styles.dart';

class DrawerButtons extends StatelessWidget {
  DrawerButtons({
    super.key,
  });

  final AppScrollController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {
              controller.scrollTo(5);
              Get.back();
            },
            child: Text(
              "About Me",
              style: AppStyles.style16Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const Gap(16),
          TextButton(
            onPressed: () {
              controller.scrollTo(3);
              Get.back();
            },
            child: Text(
              "Skills",
              style: AppStyles.style16Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const Gap(16),
          TextButton(
            onPressed: () {
              controller.scrollTo(4);
              Get.back();
            },
            child: Text(
              "Experience",
              style: AppStyles.style16Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const Gap(16),
          TextButton(
            onPressed: () {
              controller.scrollTo(6);
              Get.back();
            },
            child: Text(
              "Project",
              style: AppStyles.style16Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const Gap(16),
          TextButton(
            onPressed: () {
              controller.scrollTo(8);
              Get.back();
            },
            child: Text(
              "Contact me",
              style: AppStyles.style16Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
