import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/widgets/social_media_container.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({
    super.key,
    this.gap = 32,
  });

  final double gap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMediaContainer(
          image: Assets.imageIconsFb,
          isSelected: true,
          onTap: () {},
        ),
        Gap(gap),
        SocialMediaContainer(
          image: Assets.imageIconsRedit,
          onTap: () {},
        ),
        Gap(gap),
        SocialMediaContainer(
          image: Assets.imageIconsTwitter,
          onTap: () {},
        ),
        Gap(gap),
        SocialMediaContainer(
          image: Assets.imageIconsDiscord,
          onTap: () {},
        ),
      ],
    );
  }
}
