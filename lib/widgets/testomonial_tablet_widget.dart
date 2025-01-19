import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/testomonial_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';

class TestomonialTabletWidget extends StatelessWidget {
  const TestomonialTabletWidget({
    super.key,
    required this.testomonialModel,
    required this.isSelected,
  });

  final TestomonialModel testomonialModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: isSelected
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  child: Image.asset(testomonialModel.image),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isSelected
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.primary,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        Assets.imageIconsQuote,
                        colorFilter: ColorFilter.mode(
                          isSelected
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.secondary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    testomonialModel.name,
                    style: AppStyles.style20SemiBold(
                      context,
                      color: isSelected
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const Gap(2),
                  Text(
                    testomonialModel.message,
                    style: AppStyles.style16Regular(
                      context,
                      color: isSelected
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Text(
              testomonialModel.role,
              style: AppStyles.style16SemiBold(
                context,
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
