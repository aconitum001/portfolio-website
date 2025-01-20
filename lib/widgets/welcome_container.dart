import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/social_media_row.dart';
import 'package:portfolio/widgets/welcome_text.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width,
      height: height * 0.7,
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        image: const DecorationImage(
          alignment: Alignment(0.55, 0),
          fit: BoxFit.fitHeight,
          image: AssetImage(
            Assets.imageImagesBanner,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: WelcomeText(),
                ),
                const Gap(18),
                Text(
                  welcomeText,
                  style: AppStyles.style16Regular(
                    context,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                const SocialMediaRow(),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
