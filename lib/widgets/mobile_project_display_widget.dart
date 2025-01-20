import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/widgets/project_links.dart';

class MobileProjectDisplayWidget extends StatelessWidget {
  const MobileProjectDisplayWidget({
    super.key,
    required this.projectModel,
    required this.index,
  });

  final ProjectModel projectModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(19),
          child: Image.asset(
            projectModel.image,
            width: width,
          ),
        ),
        const Gap(28),
        Text(
          "0${index + 1}",
          style: AppStyles.style24ExtraBold(
            context,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const Gap(28),
        Text(
          projectModel.projectTitle,
          style: AppStyles.style20Bold(
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
    );
  }
}
