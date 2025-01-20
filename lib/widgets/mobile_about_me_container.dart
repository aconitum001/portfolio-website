import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';

class MobileAboutMeContainer extends StatelessWidget {
  const MobileAboutMeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width,
            child: SvgPicture.asset(
              Assets.imageImagesMobileAboutMe,
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Text(
                "About",
                style: AppStyles.style28Regular(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(16),
              Text(
                "Me",
                style: AppStyles.style28ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(20)
            ],
          ),
          const Gap(20),
          Text(
            aboutMe,
            style: AppStyles.style16Regular(
              context,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          )
        ],
      ),
    );
  }
}
