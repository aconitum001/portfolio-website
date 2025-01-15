import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/desktop_nav_bar.dart';

class CustomDesktopAppBar extends StatelessWidget {
  const CustomDesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imageImagesLogo),
        const Gap(12),
        Text(
          "Personal",
          style: AppStyles.style20Bold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Spacer(),
        const DesktopNavBar(),
        const Spacer(),
        SizedBox(
          height: 50,
          child: CustomButton(
            text: "Resume",
            hasIcon: true,
            onPressed: () {},
            icon: Assets.imageIconsDownload,
          ),
        )
      ],
    );
  }
}
