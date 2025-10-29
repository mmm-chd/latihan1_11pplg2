import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/notification_controller.dart';
import 'package:latihan1_11plg2/controllers/splashscreen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
    // Get.put(() => NotificationController());
  }
}
