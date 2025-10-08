import 'package:auction_app/app/data/getModels/get_product_details.dart';
import 'package:auction_app/app/modules/modules.dart';
import 'package:get/get.dart';

import '../../../../repositories/products_repository/products_rep.dart';

class GetProductDetailsByIdController extends GetxController {
  late String productId;
  @override
  void onInit() {
    super.onInit();
    productId = Get.arguments.toString();
    getProductDetailsById();
  }

  var selectedStatus = "Instock".obs;

  final List<String> statusOptions = [
    'Intransit',
    'Outofstock',
    'Instock',
  ];

  var currentPage = 0.obs;

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  ProductsRepository productsRepository = ProductsRepository();
  final productDetails = GetProductDetails().obs;
  Future getProductDetailsById() async {
    try {
      productDetails.value =
          await productsRepository.getProductDetails(productId);
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future deleteCar(String id) async {
    try {
      await productsRepository.deleteCar(id);
    } catch (e) {
      print(e);
    }
  }

  Future deleteTruck(String id) async {
    try {
      await productsRepository.deleteCar(id);
    } catch (e) {
      print(e);
    }
  }

  Future deleteSparePart(String id) async {
    try {
      await productsRepository.deleteSparePart(id);
    } catch (e) {
      print(e);
    }
  }
}
