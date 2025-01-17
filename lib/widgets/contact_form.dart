import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'package:portfolio/widgets/mail_text_field.dart';
import 'package:portfolio/widgets/social_media_row.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(hint: "Your name"),
        const Gap(20),
        const CustomTextField(hint: "Email"),
        const Gap(20),
        const CustomTextField(hint: "Your website (if exists)"),
        const Gap(20),
        const MailTextField(hint: "How can I help?*"),
        const Gap(20),
        Row(
          children: [
            SizedBox(
              height: 56,
              child: CustomButton(
                text: "Get in Touch",
                onPressed: () {},
              ),
            ),
            const Gap(24),
            const SocialMediaRow(
              gap: 24,
            ),
          ],
        )
      ],
    );
  }
}
