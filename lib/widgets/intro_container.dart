import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/custom_desktop_app_bar.dart';
import 'package:portfolio/widgets/skills_grid_view.dart';
import 'package:portfolio/widgets/welcome_container.dart';

class IntroContainer extends StatelessWidget {
  const IntroContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        children: [
          const Gap(24),
          const CustomDesktopAppBar(),
          const Gap(60),
          const WelcomeContainer(),
          const Gap(100),
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
