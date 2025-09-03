import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:latihan1_11plg2/controllers/main_controller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: const Text('Main Page')),
        body: mainController.pages[mainController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          onTap: mainController.changeIndex,
          currentIndex: mainController.selectedIndex.value,
          elevation: 1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Calculator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_football),
              label: 'Football',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
