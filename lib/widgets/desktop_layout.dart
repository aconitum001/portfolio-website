import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/desktop_scroll_controller.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/about_me_container.dart';
import 'package:portfolio/widgets/contact_me_container.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/desktop_nav_bar.dart';
import 'package:portfolio/widgets/experience_container.dart';
import 'package:portfolio/widgets/footer_container.dart';
import 'package:portfolio/widgets/project_container.dart';
import 'package:portfolio/widgets/skills_container.dart';
import 'package:portfolio/widgets/testomonies_container.dart';
import 'package:portfolio/widgets/welcome_container.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'dart:html' as html;


class DesktopLayout extends StatelessWidget {
  DesktopLayout({super.key});

  final DesktopScrollController desktopScrollController =
      Get.put(DesktopScrollController());

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
    return Scaffold(
      appBar: _buildDesktopAppBar(context),
      body: ScrollablePositionedList.builder(
        itemScrollController: desktopScrollController.controller,
        itemBuilder: (context, index) => items[index],
        itemCount: items.length,
      ),
    );
  }

  PreferredSizeWidget _buildDesktopAppBar(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      surfaceTintColor: Theme.of(context).colorScheme.secondary,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: Row(
          children: [
            SvgPicture.asset(Assets.imageImagesLogo),
            const Gap(12),
            Text(
              "Personal",
              style: AppStyles.style20Bold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Spacer(),
            DesktopNavBar(),
            const Spacer(),
            SizedBox(
              height: 50,
              child: CustomButton(
                text: "Resume",
                hasIcon: true,
                onPressed: _downloadFile,
                icon: Assets.imageIconsDownload,
              ),
            )
          ],
        ),
      ),
    );
  }
  
   void _downloadFile() {
    final filePath = resumePath;

    final anchor = html.AnchorElement(href: filePath)
      ..target = 'blank'
      ..download = 'resume.pdf';
    anchor.click();
    anchor.remove();
  }
}
