import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/app_scroll_controller.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:portfolio/widgets/adaptive_layout_widget.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_drawer.dart';
import 'package:portfolio/widgets/desktop_layout.dart';
import 'package:portfolio/widgets/desktop_nav_bar.dart';
import 'package:portfolio/widgets/mobile_layout.dart';
import 'package:portfolio/widgets/tablet_layout.dart';
import 'dart:html' as html;

class PortfolioView extends StatelessWidget {
  PortfolioView({super.key});

  final AppScrollController desktopScrollController =
      Get.put(AppScrollController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: width > SizeConfig.pcBreakPoint
          ? _buildDesktopAppBar(context)
          : _buildSmallScreenAppBar(context),
      endDrawer: width < SizeConfig.pcBreakPoint ? const CustomDrawer() : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }

  PreferredSizeWidget _buildSmallScreenAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      surfaceTintColor: Theme.of(context).colorScheme.secondary,
      title: Row(
        children: [
          SvgPicture.asset(
            Assets.imageImagesLogo,
          ),
          const Gap(12),
          Text(
            "Personal",
            style: AppStyles.style20Bold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      actions: [
        Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 32,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            );
          },
        ),
        const Gap(8),
      ],
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
    const filePath = resumePath;

    final anchor = html.AnchorElement(href: filePath)
      ..target = 'blank'
      ..download = 'resume.pdf';
    anchor.click();
    anchor.remove();
  }
}
