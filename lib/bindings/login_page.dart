import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/login_controller.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
  }
}
