import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/social_media_row.dart';
import 'package:portfolio/widgets/welcome_text.dart';

class TabletWelcomeContainer extends StatelessWidget {
  const TabletWelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width,
      height: height * 0.62,
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        image: const DecorationImage(
          alignment: Alignment(0.75, 0),
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
                const FittedBox(
                  fit: BoxFit.scaleDown,
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
                const Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: SocialMediaRow(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
