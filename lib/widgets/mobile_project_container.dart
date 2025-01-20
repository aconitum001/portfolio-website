import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/mobile_projects_list_view.dart';

class MobileProjectContainer extends StatelessWidget {
  const MobileProjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: AppStyles.style28Regular(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Gap(16),
              Text(
                "Projects",
                style: AppStyles.style28ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const Gap(40),
          const MobileProjectsListView(),
          const Gap(40),
        ],
      ),
    );
  }
}
