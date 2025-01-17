import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/project_display_widget.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => ProjectDisplayWidget(
        projectModel: projects[index],
        index: index,
        isReversed: !(index % 2 == 0),
      ),
      itemCount: projects.length,
      separatorBuilder: (context, index) => const Gap(80),
    );
  }
}
