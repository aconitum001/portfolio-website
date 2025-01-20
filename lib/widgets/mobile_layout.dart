import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/app_scroll_controller.dart';
import 'package:portfolio/widgets/footer_container.dart';
import 'package:portfolio/widgets/mobile_about_me_container.dart';
import 'package:portfolio/widgets/mobile_contact_me_container.dart';
import 'package:portfolio/widgets/mobile_experience_container.dart';
import 'package:portfolio/widgets/mobile_project_container.dart';
import 'package:portfolio/widgets/mobile_skill_container.dart';
import 'package:portfolio/widgets/mobile_testomonial_container.dart';
import 'package:portfolio/widgets/mobile_welcome_container.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});

  final AppScrollController desktopScrollController = Get.find();

  final List<Widget> items = const [
    Gap(40),
    MobileWelcomeContainer(),
    Gap(80),
    MobileSkillContainer(),
    MobileExperienceContainer(),
    MobileAboutMeContainer(),
    MobileProjectContainer(),
    MobileTestomonialContainer(),
    MobileContactMeContainer(),
    Gap(80),
    FooterContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemScrollController: desktopScrollController.controller,
      itemBuilder: (context, index) => items[index],
      itemCount: items.length,
    );
  }
}
