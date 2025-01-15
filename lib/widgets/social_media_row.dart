import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/widgets/social_media_container.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMediaContainer(
          image: Assets.imageIconsFb,
          isSelected: true,
          onTap: () {},
        ),
        const Gap(32),
        SocialMediaContainer(
          image: Assets.imageIconsRedit,
          onTap: () {},
        ),
        const Gap(32),
        SocialMediaContainer(
          image: Assets.imageIconsTwitter,
          onTap: () {},
        ),
        const Gap(32),
        SocialMediaContainer(
          image: Assets.imageIconsDiscord,
          onTap: () {},
        ),
      ],
    );
  }
}
