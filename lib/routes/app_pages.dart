import 'package:get/route_manager.dart';
import 'package:latihan1_11plg2/base/base_page.dart';
import 'package:latihan1_11plg2/base_side/base_side_bar.dart';
import 'package:latihan1_11plg2/pages/calculator_page.dart';
import 'package:latihan1_11plg2/pages/edit_football_player_page.dart';
import 'package:latihan1_11plg2/pages/football_player_page.dart';
import 'package:latihan1_11plg2/pages/main_page.dart';
import 'package:latihan1_11plg2/pages/profile_page.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';

class AppPages {
  static final appPages = [
    GetPage(name: AppRoutes.basePage, page: () => BasePage()),
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage()),
    GetPage(
      name: AppRoutes.footballPlayerPage,
      page: () => FootballPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.editFootballPlayer,
      page: () => EditFootballPlayerPage(),
    ),
    GetPage(name: AppRoutes.profilePage, page: () => ProfilePage()),
    GetPage(name: AppRoutes.mainPage, page: () => MainPage()),
    GetPage(name: AppRoutes.baseSideBar, page: () => BaseSideBar()),
  ];
}
