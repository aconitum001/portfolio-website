import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';

class TabletAboutMeContainer extends StatelessWidget {
  const TabletAboutMeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        children: [
          const Gap(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
          const Gap(60),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 7,
                child: SizedBox(
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
                child: Text(
                  aboutMe,
                  textAlign: TextAlign.justify,
                  style: AppStyles.style16Regular(
                    context,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              )
            ],
          ),
          const Gap(60)
        ],
      ),
    );
  }
}
