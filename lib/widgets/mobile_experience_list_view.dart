import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/mobile_experience_widget.dart';

class MobileExperienceListView extends StatelessWidget {
  const MobileExperienceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => MobileExperienceWidget(
        experienceModel: experiences[index],
      ),
      itemCount: experiences.length,
      separatorBuilder: (context, index) => const Gap(20),
    );
  }
}
