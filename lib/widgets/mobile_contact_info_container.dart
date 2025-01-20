import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';

class MobileContactInfoContainer extends StatelessWidget {
  const MobileContactInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Let's",
              style: AppStyles.style28ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Talk',
                  style: AppStyles.style28ExtraBold(context).copyWith(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Theme.of(context).colorScheme.primary,
                  ),
                ),
                // Solid text as fill.
                Text(
                  'Talk',
                  style: AppStyles.style28ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
            const Gap(16),
            Text(
              "for",
              style: AppStyles.style28ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        const Gap(6),
        Text(
          "Something special",
          style: AppStyles.style28ExtraBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(12),
        Text(
          tagline,
          style: AppStyles.style16Regular(
            context,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        const Gap(30),
        Text(
          myEmail,
          style: AppStyles.style28SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(12),
        Text(
          phoneNumber,
          style: AppStyles.style28SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
