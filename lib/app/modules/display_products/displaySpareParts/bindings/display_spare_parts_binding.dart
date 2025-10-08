import 'package:get/get.dart';

import '../controllers/display_spare_parts_controller.dart';

class DisplaySparePartsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DisplaySparePartsController>(
      () => DisplaySparePartsController(),
    );
  }
}
