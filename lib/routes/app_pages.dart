import 'package:get/route_manager.dart';
import 'package:latihan1_11plg2/base/base_page.dart';
import 'package:latihan1_11plg2/base_side/base_side_bar.dart';
import 'package:latihan1_11plg2/bindings/base_binding.dart';
import 'package:latihan1_11plg2/bindings/calculator_binding.dart';
import 'package:latihan1_11plg2/bindings/contact_binding.dart';
import 'package:latihan1_11plg2/bindings/example_binding.dart';
import 'package:latihan1_11plg2/bindings/football_binding.dart';
import 'package:latihan1_11plg2/bindings/login_page.dart';
import 'package:latihan1_11plg2/bindings/profile_binding.dart';
import 'package:latihan1_11plg2/bindings/splashscreen_binding.dart';
import 'package:latihan1_11plg2/pages/calculator_page.dart';
import 'package:latihan1_11plg2/pages/contact_page.dart';
import 'package:latihan1_11plg2/pages/edit_football_player_page.dart';
import 'package:latihan1_11plg2/pages/example_page.dart';
import 'package:latihan1_11plg2/pages/football_player_page.dart';
import 'package:latihan1_11plg2/pages/login_page.dart';
import 'package:latihan1_11plg2/pages/main_page.dart';
import 'package:latihan1_11plg2/pages/profile_page.dart';
import 'package:latihan1_11plg2/pages/splashscreen_page.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';

class AppPages {
  static final appPages = [
    GetPage(
      name: AppRoutes.basePage,
      page: () => BasePage(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: AppRoutes.calculatorPage,
      page: () => CalculatorPage(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: AppRoutes.footballPlayerPage,
      page: () => FootballPlayerPage(),
      binding: FootballBinding(),
    ),
    GetPage(
      name: AppRoutes.editFootballPlayer,
      page: () => EditFootballPlayerPage(),
    ),
    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(name: AppRoutes.mainPage, page: () => MainPage()),
    GetPage(name: AppRoutes.baseSideBar, page: () => BaseSideBar()),
    GetPage(
      name: AppRoutes.loginPage,
      page: () => LoginPage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: AppRoutes.splashScreenPage,
      page: () => SplashscreenPage(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.contactPage,
      page: () => ContactPage(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: AppRoutes.examplePage,
      page: () => ExamplePage(),
      binding: ExampleBinding(),
    ),
  ];
}
