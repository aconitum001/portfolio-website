import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/testomonial_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/testomonial_tablet_widget.dart';
import 'package:portfolio/widgets/testomonial_widget.dart';

class MobileTestomonialContainer extends StatelessWidget {
  const MobileTestomonialContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.symmetric(
        horizontal: 36,
      ),
      child: Column(
        children: [
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My",
                style: AppStyles.style28Regular(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(16),
              Text(
                "Testimonial",
                style: AppStyles.style28ExtraBold(
                  context,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const Gap(40),
          Column(
            children: testimonials.asMap().entries.map(
              (e) {
                int index = e.key;
                TestomonialModel testomonial = e.value;
                return width > SizeConfig.mobileBreakPoint
                    ? Padding(
                        padding: EdgeInsets.only(
                          bottom: index == 2 ? 0 : 20,
                        ),
                        child: TestomonialTabletWidget(
                          isSelected: index == 1,
                          testomonialModel: testomonial,
                        ),
                      )
                    : TestomonialWidget(
                        testomonialModel: testomonial,
                        isSelected: index == 1,
                        padding: index == 2 ? 0 : 40,
                        isVertical: true,
                      );
              },
            ).toList(),
          ),
          const Gap(80),
        ],
      ),
    );
  }
}
