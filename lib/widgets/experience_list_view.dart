import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/experience_card_widget.dart';

class ExperienceListView extends StatelessWidget {
  const ExperienceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ExperienceCardWidget(
        experienceModel: experiences[index],
      ),
      itemCount: experiences.length,
      separatorBuilder: (context, index) => const Gap(32),
    );
  }
}
