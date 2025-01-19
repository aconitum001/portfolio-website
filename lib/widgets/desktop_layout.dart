import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/app_scroll_controller.dart';
import 'package:portfolio/widgets/about_me_container.dart';
import 'package:portfolio/widgets/contact_me_container.dart';
import 'package:portfolio/widgets/experience_container.dart';
import 'package:portfolio/widgets/footer_container.dart';
import 'package:portfolio/widgets/project_container.dart';
import 'package:portfolio/widgets/skills_container.dart';
import 'package:portfolio/widgets/testomonies_container.dart';
import 'package:portfolio/widgets/welcome_container.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopLayout extends StatelessWidget {
  DesktopLayout({super.key});

  final AppScrollController desktopScrollController = Get.find();

  final List<Widget> items = const [
    Gap(60),
    WelcomeContainer(),
    Gap(100),
    SkillsContainer(),
    ExperienceContainer(),
    AboutMeContainer(),
    ProjectContainer(),
    TestomoniesContainer(),
    ContactMeContainer(),
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
