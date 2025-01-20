import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/mobile_project_display_widget.dart';

class MobileProjectsListView extends StatelessWidget {
  const MobileProjectsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => MobileProjectDisplayWidget(
        projectModel: projects[index],
        index: index,
      ),
      itemCount: projects.length,
      separatorBuilder: (context, index) => const Gap(28),
    );
  }
}
