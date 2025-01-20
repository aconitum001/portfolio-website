import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectLinks extends StatelessWidget {
  const ProjectLinks({
    super.key,
    required this.projectModel,
  });

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        projectModel.youtubeLink != null
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    final websiteUri = Uri.parse(projectModel.youtubeLink!);
                    launchUrl(
                      websiteUri,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: SvgPicture.asset(
                    Assets.imageIconsYoutube,
                    width: 25,
                    height: 20,
                  ),
                ),
              )
            : const SizedBox(),
        Gap(projectModel.youtubeLink != null ? 12 : 0),
        projectModel.githubLink != null
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    final websiteUri = Uri.parse(projectModel.githubLink!);
                    launchUrl(
                      websiteUri,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: SvgPicture.asset(
                    Assets.imageIconsGithub,
                    width: 20,
                    height: 20,
                  ),
                ),
              )
            : const SizedBox(),
        const Gap(12),
        projectModel.linkedinLink != null
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    final websiteUri = Uri.parse(projectModel.linkedinLink!);
                    launchUrl(
                      websiteUri,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: SvgPicture.asset(
                    Assets.imageIconsLinkedIn,
                    width: 20,
                    height: 20,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
