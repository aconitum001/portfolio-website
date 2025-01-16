import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 7,
            child: Container(
              width: 572,
              child: SvgPicture.asset(
                Assets.imageImagesAboutMe,
              ),
            ),
          ),
          const Flexible(
            child: Gap(70),
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "About",
                      style: AppStyles.style48Regular(
                        context,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Gap(16),
                    Text(
                      "Me",
                      style: AppStyles.style48ExtraBold(
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
                  textAlign: TextAlign.justify,
                  style: AppStyles.style16Regular(
                    context,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
