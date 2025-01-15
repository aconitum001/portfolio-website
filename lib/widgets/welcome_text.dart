

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/utils/app_styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello I'am",
              style: AppStyles.style48Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Text(
              "Skander Jenhani.",
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "Flutter",
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Developer',
                  style: AppStyles.style48ExtraBold(context).copyWith(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Theme.of(context).colorScheme.primary,
                  ),
                ),
                // Solid text as fill.
                Text(
                  'Developer',
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Based In",
              style: AppStyles.style48Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Text(
              "Tunisia.",
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}