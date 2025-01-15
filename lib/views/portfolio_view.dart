import 'package:flutter/material.dart';
import 'package:portfolio/views/adaptive_layout_widget.dart';
import 'package:portfolio/widgets/desktop_layout.dart';
import 'package:portfolio/widgets/mobile_layout.dart';
import 'package:portfolio/widgets/tablet_layout.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
