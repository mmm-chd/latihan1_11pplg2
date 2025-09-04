import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/base_side/base_side_bar_controller.dart';

class BaseSideBar extends StatelessWidget {
  BaseSideBar({super.key});

  final BaseSideBarController baseSideBarController = Get.put(
    BaseSideBarController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello World!!")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Severus Melvin"),
              accountEmail: Text("severus.melvin@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpeg"),
              ),
              decoration: BoxDecoration(color: Colors.lightBlue),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Calculator'),
              onTap: () {
                baseSideBarController.changeIndex(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sports_soccer),
              title: Text('Football Player'),
              onTap: () {
                baseSideBarController.changeIndex(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                baseSideBarController.changeIndex(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: baseSideBarController.currentIndex.value,
          children: baseSideBarController.pages,
        ),
      ),
    );
  }
}
