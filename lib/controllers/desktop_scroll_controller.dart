import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DesktopScrollController extends GetxController {
  final controller = ItemScrollController();

  // Function to scroll to a specific position

  void scrollTo(int index,
      {Duration duration = const Duration(milliseconds: 300)}) {
    controller.scrollTo(
      index: index,
      duration: duration,
      curve: Curves.easeInOut,
    );
  }
}
