import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/skill_model.dart';
import 'package:portfolio/utils/app_styles.dart';

class SkillContainer extends StatelessWidget {
  const SkillContainer({
    super.key,
    required this.skillModel,
  });

  final SkillModel skillModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: skillModel.isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(4),
        border: !skillModel.isSelected
            ? Border.all(color: Theme.of(context).colorScheme.primary)
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            skillModel.image,
            width: 56,
            height: 56,
          ),
          const Gap(32),
          Text(
            skillModel.skill,
            style: AppStyles.style20Bold(
              context,
              color: skillModel.isSelected
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    );
  }
}
