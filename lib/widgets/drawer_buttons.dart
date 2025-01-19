import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';

class DrawerButtons extends StatelessWidget {
  const DrawerButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
            onPressed: () {},
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
