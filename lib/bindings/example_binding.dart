import 'package:get/get.dart';
import 'package:latihan1_11plg2/controllers/example_controller.dart';

class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() => ExampleController());
  }
}
