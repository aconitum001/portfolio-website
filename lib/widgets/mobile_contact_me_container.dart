import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/widgets/contact_form.dart';
import 'package:portfolio/widgets/mobile_contact_info_container.dart';
import 'package:portfolio/widgets/social_media_row.dart';

class MobileContactMeContainer extends StatelessWidget {
  const MobileContactMeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          ContactForm(
            isMobile: true,
          ),
          const Gap(20),
          const Row(
            children: [
              Expanded(
                flex: 3,
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: SocialMediaRow(),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
          const Gap(40),
          const MobileContactInfoContainer(),
        ],
      ),
    );
  }
}
