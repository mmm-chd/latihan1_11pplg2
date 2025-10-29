import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:latihan1_11plg2/controllers/football_player_controller.dart';
import 'package:latihan1_11plg2/pages/football_player/football_mobile.dart';
import 'package:latihan1_11plg2/pages/football_player/football_wide.dart';

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  // final FootballPlayerController footballPlayerController = Get.put(
  //   FootballPlayerController(),
  // );

  final FootballPlayerController footballPlayerController =
      Get.find<FootballPlayerController>(); // Using binding

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          footballPlayerController.updateLayout(constraints);
          return Obx(
            () =>
                footballPlayerController.isMobile.value
                    ? FootballMobile()
                    : FootballWide(),
          );
        },
      ),
    );
  }
}
