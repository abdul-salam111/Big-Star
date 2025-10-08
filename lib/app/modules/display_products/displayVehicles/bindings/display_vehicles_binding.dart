import 'package:get/get.dart';

import '../controllers/display_vehicles_controller.dart';

class DisplayVehiclesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisplayVehiclesController>(
      () => DisplayVehiclesController(),
    );
  }
}
