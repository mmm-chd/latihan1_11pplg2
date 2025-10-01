import 'package:get/get.dart';
import 'package:latihan1_11plg2/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    Get.offAllNamed(AppRoutes.splashScreenPage);
  }
}
