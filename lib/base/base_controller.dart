import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11plg2/pages/calculator_page.dart';
import 'package:latihan1_11plg2/pages/football_player_page.dart';
import 'package:latihan1_11plg2/pages/profile_page.dart';

class BaseController extends GetxController {
  var currentIndex = 0.obs;

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayerPage(),
    ProfilePage(),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
