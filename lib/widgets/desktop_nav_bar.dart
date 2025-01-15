import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "About Me",
          style: AppStyles.style20SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(32),
        Text(
          "Skills",
          style: AppStyles.style20SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(32),
        Text(
          "Project",
          style: AppStyles.style20SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(32),
        Text(
          "Contact me",
          style: AppStyles.style20SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
