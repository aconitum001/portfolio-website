import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/app_styles.dart';
import 'package:portfolio/utils/assets.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/drawer_buttons.dart';
import 'dart:html' as html;

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(16),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
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
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          const Gap(16),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            height: 0,
          ),
          const Gap(20),
           DrawerButtons(),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 50,
              child: CustomButton(
                text: "Resume",
                hasIcon: true,
                onPressed: _downloadFile,
                icon: Assets.imageIconsDownload,
              ),
            ),
          )
        ],
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
