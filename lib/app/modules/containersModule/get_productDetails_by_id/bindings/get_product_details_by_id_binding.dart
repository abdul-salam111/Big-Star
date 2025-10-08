import 'package:get/get.dart';

import '../controllers/get_product_details_by_id_controller.dart';

class GetProductDetailsByIdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetProductDetailsByIdController>(
      () => GetProductDetailsByIdController(),
    );
  }
}
