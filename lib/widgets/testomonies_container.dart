import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/testomonial_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/testomonial_widget.dart';

class TestomoniesContainer extends StatelessWidget {
  const TestomoniesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: Column(
        children: [
          const Gap(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: AppStyles.style48Regular(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(16),
              Text(
                "Testimonial",
                style: AppStyles.style48ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const Gap(60),
          Row(
            children: testimonials.asMap().entries.map(
              (e) {
                int index = e.key;
                TestomonialModel testomonial = e.value;
                return Expanded(
                  child: TestomonialWidget(
                    testomonialModel: testomonial,
                    isSelected: index == 1,
                    padding: index == 2 ? 0 : 30,
                  ),
                );
              },
            ).toList(),
          ),
          const Gap(100),
        ],
      ),
    );
  }
}
