import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/models/testomonial_model.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';

class TestomonialWidget extends StatelessWidget {
  const TestomonialWidget({
    super.key,
    required this.testomonialModel,
    required this.isSelected,
    required this.padding,
    this.isVertical = false,
  });

  final TestomonialModel testomonialModel;
  final bool isSelected;
  final double padding;
  final bool isVertical;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 370 / 400,
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: _buildDecoration(context),
        margin: EdgeInsets.only(
          right: isVertical ? 0 : padding,
          bottom: isVertical ? padding : 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 96,
                  height: 96,
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
            const Spacer(),
            Text(
              testomonialModel.message,
              textAlign: TextAlign.center,
              style: AppStyles.style16Regular(
                context,
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            const Spacer(),
            Divider(
              color: isSelected
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
              height: 0,
              endIndent: 120,
              indent: 120,
            ),
            const Spacer(),
            Text(
              testomonialModel.name,
              style: AppStyles.style20SemiBold(
                context,
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
            const Spacer(),
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

  BoxDecoration _buildDecoration(BuildContext context) {
    return BoxDecoration(
      color: isSelected
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.secondary,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 6),
          blurRadius: 8,
          spreadRadius: -6,
          color: const Color(0xff18274B).withOpacity(0.12),
        ),
        BoxShadow(
          offset: const Offset(0, 8),
          blurRadius: 16,
          spreadRadius: -6,
          color: const Color(0xff18274B).withOpacity(0.08),
        ),
      ],
    );
  }
}
