import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/experience_list_view.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: AppStyles.style48Regular(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Gap(16),
              Text(
                "Experience",
                style: AppStyles.style48ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const Gap(60),
          const ExperienceListView(),
          const Gap(80)
        ],
      ),
    );
  }
}
