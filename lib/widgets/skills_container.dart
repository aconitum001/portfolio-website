import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/skills_grid_view.dart';

class SkillsContainer extends StatelessWidget {
  const SkillsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: AppStyles.style48Regular(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(16),
              Text(
                "Skills",
                style: AppStyles.style48ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const Gap(60),
          const SkillsGridView(
            crossAxisCount: 5,
            crossAxisSpacing: 71,
            mainAxisSpacing: 40,
          ),
          const Gap(80),
        ],
      ),
    );
  }
}
