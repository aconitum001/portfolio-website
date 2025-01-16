import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/experience_model.dart';
import 'package:portfolio/utils/app_styles.dart';

class ExperienceCardWidget extends StatelessWidget {
  const ExperienceCardWidget({super.key, required this.experienceModel});

  final ExperienceModel experienceModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      decoration: BoxDecoration(
        color: experienceModel.isSelected
            ? Theme.of(context).colorScheme.primaryContainer
            : Theme.of(context).colorScheme.primary,
        border: !experienceModel.isSelected
            ? Border.all(color: Theme.of(context).colorScheme.onSecondary)
            : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                experienceModel.companyLogo,
                height: 32,
              ),
              const Gap(16),
              Text(
                experienceModel.jobTitle,
                style: AppStyles.style24SemiBold(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Spacer(),
              Text(
                experienceModel.date,
                style: AppStyles.style16SemiBold(
                  context,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          const Gap(28),
          Text(
            experienceModel.description,
            style: AppStyles.style16Regular(
              context,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          )
        ],
      ),
    );
  }
}
