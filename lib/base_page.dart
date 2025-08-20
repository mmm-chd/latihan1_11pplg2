import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/base_controller.dart';
import 'package:latihan1_11plg2/bottom_nav.dart';
import 'package:latihan1_11plg2/pages/calculator_page.dart';
import 'package:latihan1_11plg2/pages/football_player_page.dart';
import 'package:latihan1_11plg2/pages/profile_page.dart';

class BasePage extends StatelessWidget {
  BasePage({super.key});

  final BaseController baseController = Get.put(BaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: BaseController.to.currentIndex.value,
          children: [CalculatorPage(), FootballPlayerPage(), ProfilePage()],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
