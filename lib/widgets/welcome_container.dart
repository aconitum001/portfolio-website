import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
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
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
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
              children: [
                const Spacer(),
                const WelcomeText(),
                const Gap(18),
                Text(
                  "I'm Skander Jenhani Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book.",
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
