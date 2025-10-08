import 'package:get/get.dart';

import '../controllers/display_trucks_controller.dart';

class DisplayTrucksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisplayTrucksController>(
      () => DisplayTrucksController(),
    );
  }
}
