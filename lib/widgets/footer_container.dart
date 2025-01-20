import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 85,
      color: Theme.of(context).colorScheme.primary,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.imageImagesLogo,
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.secondary,
              BlendMode.srcIn,
            ),
          ),
          const Gap(12),
          Text(
            "Personal",
            style: AppStyles.style20Bold(
              context,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "@ 2025 Skander Jenhani",
                style: AppStyles.style16SemiBold(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  Text(
                    "Made with Flutter by ",
                    style: AppStyles.style16SemiBold(
                      context,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
