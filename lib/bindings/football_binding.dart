import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/football_player_controller.dart';

class FootballBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FootballPlayerController>(() => FootballPlayerController());
  }
}
