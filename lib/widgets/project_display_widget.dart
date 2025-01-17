import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/project_links.dart';

class ProjectDisplayWidget extends StatelessWidget {
  const ProjectDisplayWidget({
    super.key,
    required this.projectModel,
    required this.index,
    required this.isReversed,
  });

  final ProjectModel projectModel;
  final int index;
  final bool isReversed;

  @override
  Widget build(BuildContext context) {
    if (isReversed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "0${index + 1}",
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(30),
                Text(
                  projectModel.projectTitle,
                  style: AppStyles.style32Bold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(28),
                Text(
                  projectModel.projectDecription,
                  style: AppStyles.style16Regular(
                    context,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const Gap(28),
                ProjectLinks(
                  projectModel: projectModel,
                )
              ],
            ),
          ),
          const Flexible(
            child: Gap(100),
          ),
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image.asset(projectModel.image),
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image.asset(projectModel.image),
            ),
          ),
          const Flexible(
            child: Gap(100),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "0${index + 1}",
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(28),
                Text(
                  projectModel.projectTitle,
                  style: AppStyles.style32Bold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(28),
                Text(
                  projectModel.projectDecription,
                  style: AppStyles.style16Regular(
                    context,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const Gap(28),
                ProjectLinks(
                  projectModel: projectModel,
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
