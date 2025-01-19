import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/testomonial_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/testomonial_tablet_widget.dart';

class TestomonialTabletContainer extends StatelessWidget {
  const TestomonialTabletContainer({super.key});

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: testimonials.asMap().entries.map(
                (e) {
                  int index = e.key;
                  TestomonialModel testomonialModel = e.value;
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: index != testimonials.length - 1 ? 12 : 0,
                    ),
                    child: TestomonialTabletWidget(
                      testomonialModel: testomonialModel,
                      isSelected: index % 2 != 0,
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          const Gap(100),
        ],
      ),
    );
  }
}
