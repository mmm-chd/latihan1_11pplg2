import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:latihan1_11plg2/base_controller.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationBar(
        indicatorColor: Colors.white,
        backgroundColor: Colors.lightBlue,
        labelTextStyle: WidgetStateProperty.all(
          TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        elevation: 1,
        selectedIndex: BaseController.to.currentIndex.value,
        onDestinationSelected: (value) => BaseController.to.changeIndex(value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_soccer),
            label: 'Football',
          ),
          NavigationDestination(
            icon: Icon(Icons.person), 
            label: 'My Profile'
          ),
        ],
      ),
    );
  }
}
