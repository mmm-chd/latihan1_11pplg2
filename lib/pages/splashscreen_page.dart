import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/notification_controller.dart';
import 'package:latihan1_11plg2/controllers/splashscreen_controller.dart';

class SplashscreenPage extends StatelessWidget {
  SplashscreenPage({super.key});

  final SplashScreenController splashScreenController =
      Get.find<SplashScreenController>();

  final NotificationController notificationController = Get.put(
    NotificationController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Splashscreen Page')));
  }
}
