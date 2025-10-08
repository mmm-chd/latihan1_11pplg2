import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/example_controller.dart';
import 'package:latihan1_11plg2/pages/example_feature/example_mobile.dart';
import 'package:latihan1_11plg2/pages/example_feature/example_wide.dart';

class ExamplePage extends StatelessWidget {
  ExamplePage({super.key});

  final ExampleController exampleController = Get.find<ExampleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          exampleController.updateLayout(constraints);
          return Obx(
            () =>
                exampleController.isMobile.value
                    ? ExampleMobile()
                    : ExampleWide(),
          );
        },
      ),
    );
  }
}
