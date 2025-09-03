import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/base/base_controller.dart';
import 'package:latihan1_11plg2/base/bottom_nav.dart';

class BasePage extends StatelessWidget {
  BasePage({super.key});

  final BaseController baseController = Get.put(BaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: baseController.currentIndex.value,
          children: baseController.pages,
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
