import 'package:get/get.dart';
import 'package:latihan1_11plg2/base/base_controller.dart';
import 'package:latihan1_11plg2/controllers/calculator_controller.dart';
import 'package:latihan1_11plg2/controllers/football_player_controller.dart';
import 'package:latihan1_11plg2/controllers/profile_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController(), fenix: true);
    Get.lazyPut<CalculatorController>(
      () => CalculatorController(),
      fenix: true,
    );
    Get.lazyPut<FootballPlayerController>(
      () => FootballPlayerController(),
      fenix: true,
    );
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}
