import 'package:auction_app/app/repositories/products_repository/products_rep.dart';
import '../../../../data/getModels/get_vehicles_model.dart';
import '../../../modules.dart';

class DisplayVehiclesController extends GetxController {
  final FocusNode searchFocusNode = FocusNode();

  final data = <AllVehicleData>[].obs;

  // Paginated data for the current page
  final paginatedData = <AllVehicleData>[].obs;

  // Filtered data based on status
  final filteredData = <AllVehicleData>[].obs;

  // Current page number
  final RxInt currentPage = 1.obs;

  // Number of items per page
  final int itemsPerPage = 10;

  // List to track expanded rows
  final RxList<int> expandedRows = <int>[].obs;
  var selectedRows = <int>[].obs;

  // Status filter
  final RxString selectedStatus = ''.obs;

  // Handle data pagination
  void paginateData() {
    int start = (currentPage.value - 1) * itemsPerPage;
    int end = start + itemsPerPage;
    paginatedData.value =
        filteredData.sublist(start, end.clamp(0, filteredData.length));
  }

  // Navigate to a specific page
  void goToPage(int page) {
    currentPage.value = page;
    paginateData();
  }

  // Toggle row expansion
  void toggleExpandRow(int id) {
    if (expandedRows.contains(id)) {
      expandedRows.remove(id);
    } else {
      expandedRows.add(id);
    }
    expandedRows.refresh();
  }

  // Build pagination UI
  Widget buildPagination() {
    int totalPages = (filteredData.length / itemsPerPage).ceil();
    List<Widget> pages = List.generate(totalPages, (index) {
      int page = index + 1;
      return InkWell(
        onTap: () => goToPage(page),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: currentPage.value == page
                ? AppColors.primaryColor
                : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              '$page',
              style: TextStyle(
                color: currentPage.value == page ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
      );
    });

    return Row(
      mainAxisAlignment: mainAxisCenter,
      children: [
        IconButton(
          icon: Icon(Iconsax.arrow_square_left),
          onPressed: currentPage.value > 1
              ? () => goToPage(currentPage.value - 1)
              : null,
        ),
        ...pages,
        IconButton(
          icon: Icon(Iconsax.arrow_right),
          onPressed: currentPage.value < totalPages
              ? () => goToPage(currentPage.value + 1)
              : null,
        ),
      ],
    );
  }

  // Search functionality for auctions
  void search(String query) {
    if (query.isEmpty) {
      paginateData();
    } else {
      filteredData.assignAll(
        data.where((vehicle) =>
            (vehicle.chassisNumber!)
                .toLowerCase()
                .contains(query.toLowerCase()) ||
            vehicle.name.toString().contains(query) ||
            vehicle.model
                .toString()
                .toLowerCase()
                .contains(query.toLowerCase())),
      );

      currentPage.value = 1; // Reset to first page
      paginateData();
    }
  }

  // Loading indicator
  var isLoading = false.obs;
  // Repository instance
  final ProductsRepository productsRepository = ProductsRepository();

  @override
  void onInit() async {
    super.onInit();
    await getAllRegisteredVehicles();
    paginateData();
  }

  // Fetching all vehicles
  Future<void> getAllRegisteredVehicles() async {
    try {
      isLoading.value = true;
      final response = await productsRepository.getAllVehiclesToDisplay();
      data.value = response.data.map((e) => e).toList();
      filteredData.assignAll(data);
      isLoading.value = false;
    } catch (e) {
      Get.snackbar("Error", e.toString());
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  var selectAll = false.obs;
  // Selection controls
  void toggleSelectAll(bool? value) {
    if (value == null) return;
    selectAll(value);
    selectedRows.clear();
    if (value) {
      selectedRows.addAll(filteredData.map((e) => e.id));
    }
  }

  void toggleRowSelection(int id) {
    selectedRows.contains(id) ? selectedRows.remove(id) : selectedRows.add(id);
    selectAll(selectedRows.length == filteredData.length);
  }

  var isRefreshLoading = false.obs;
  Future<void> refreshData() async {
    isRefreshLoading.value = true;
    await getAllRegisteredVehicles();
    isRefreshLoading.value = false;
  }

  void unfocusSearch() {
    searchFocusNode.unfocus();
  }

  @override
  void onClose() {
    searchFocusNode.dispose();

    super.onClose();
  }
}
