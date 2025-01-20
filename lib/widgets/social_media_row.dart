import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/social_media_container.dart';
import 'package:url_launcher/url_launcher.dart';

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
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaContainer(
            image: Assets.imageIconsLinkedIn,
            isSelected: true,
            onTap: () {
              final websiteUri = Uri.parse(linkedInProfile);
              launchUrl(
                websiteUri,
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ),
        Gap(gap),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaContainer(
            image: Assets.imageIconsGithub,
            onTap: () {
              final websiteUri = Uri.parse(githubProfile);
              launchUrl(
                websiteUri,
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ),
        Gap(gap),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaContainer(
            image: Assets.imageIconsFb,
            onTap: () {
              final websiteUri = Uri.parse(fbProfile);
              launchUrl(
                websiteUri,
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ),
        Gap(gap),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaContainer(
            image: Assets.imageIconsInsta,
            onTap: () {
              final websiteUri = Uri.parse(instaProfile);
              launchUrl(
                websiteUri,
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ),
      ],
    );
  }
}
