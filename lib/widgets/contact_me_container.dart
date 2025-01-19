import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/widgets/contact_form.dart';
import 'package:portfolio/widgets/contact_info.dart';

class ContactMeContainer extends StatelessWidget {
  const ContactMeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 5,
            child: SizedBox(
              width: 500,
              child: ContactForm(),
            ),
          ),
          const Flexible(
            flex: 1,
            child: Gap(100),
          ),
          const Expanded(
            flex: 5,
            child: ContactInfo(),
          ),
        ],
      ),
    );
  }
}
