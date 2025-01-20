import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/skills_grid_view.dart';

class MobileSkillContainer extends StatelessWidget {
  const MobileSkillContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: AppStyles.style28Regular(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(16),
              Text(
                "Skills",
                style: AppStyles.style28ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const Gap(40),
          SkillsGridView(
            crossAxisCount: width > SizeConfig.mobileBreakPoint ? 3 : 2,
            crossAxisSpacing: width * 0.05,
            mainAxisSpacing: width * 0.05,
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
