import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/mobile_experience_list_view.dart';

class MobileExperienceContainer extends StatelessWidget {
  const MobileExperienceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                "Experience",
                style: AppStyles.style28ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const Gap(40),
          const MobileExperienceListView(),
          const Gap(40),
        ],
      ),
    );
  }
}
