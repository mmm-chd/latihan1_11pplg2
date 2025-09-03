import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:latihan1_11plg2/pages/calculator_page.dart';
import 'package:latihan1_11plg2/pages/football_player_page.dart';
import 'package:latihan1_11plg2/pages/profile_page.dart';

class MainController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayerPage(),
    ProfilePage(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
