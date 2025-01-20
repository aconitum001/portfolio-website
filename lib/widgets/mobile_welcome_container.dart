import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/mobile_welcome_text.dart';
import 'package:portfolio/widgets/social_media_row.dart';

class MobileWelcomeContainer extends StatelessWidget {
  const MobileWelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: width / 450,
            child: SvgPicture.asset(
              Assets.imageImagesMobileBanner,
            ),
          ),
          const Gap(48),
          const MobileWelcomeText(),
          const Gap(32),
          Text(
            welcomeText,
            style: AppStyles.style16Regular(
              context,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
          const Gap(32),
          const Row(
            children: [
              Expanded(
                flex: 3,
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: SocialMediaRow(),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
