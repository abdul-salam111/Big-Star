import 'package:auction_app/app/modules/modules.dart';

class CustomermanagementController extends GetxController {
  late UserData userData;
  var selectedIndex = 0.obs;
  var filteredData = <BidsWon>[].obs;
  var rowsPerPage = 7.obs;
  var selectedRows = <int>[].obs;
  var data = <BidsWon>[].obs;

  @override
  void onInit() {
    super.onInit();
    userData = Get.arguments;
  }

  var fromDate = DateTime.now().obs;
  var toDate = DateTime.now().obs;

  Future<void> pickDate(bool isFromDate, BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isFromDate ? fromDate.value : toDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      isFromDate ? fromDate.value = picked : toDate.value = picked;
    }
  }

  // Loading indicator
  var isLoading = false.obs;

  // Repository instance
  final CustomersRepository customersRepository = CustomersRepository();
  final managecustomerController = Get.put(ManagecustomerController());
  // delete a customer by id
  Future<void> deleteCustomerById() async {
    try {
      final isDeleted = await customersRepository
          .deleteIndividualCustomer(userData.id.toString());

      if (isDeleted) {
        isLoading.value = true;
        await managecustomerController.getAllSignupCustomers();
        Get.snackbar(
            "Customer Deleted", "The customer is deleted successfully");
      }
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  var isbiddingLoading = false.obs;
  final getIndividualCustomerWonBids = GetIndividualCustomerWonBids().obs;
//get customer won bids
  Future<void> getCustomerWonBids() async {
    try {
      isbiddingLoading.value = true;
      getIndividualCustomerWonBids.value = await customersRepository
          .getIndividualCustomerWonBids(userData.id.toString());

      if (getIndividualCustomerWonBids.value.bidsWon != null) {
        data.assignAll(
            getIndividualCustomerWonBids.value.bidsWon!.map((e) => e).toList());
        filteredData.assignAll(data);
      }
      isbiddingLoading.value = false;
    } catch (e) {
      isbiddingLoading.value = false;
    } finally {
      isbiddingLoading.value = false;
    }
  }

  Future<void> deleteWonBidOfCustomerByAdmin(
    String chasisnumber,
  ) async {
    try {
      final isDeleted = await customersRepository.deleteWonBidofCustomerByAdmin(
          chassisno: chasisnumber, customerId: userData.id.toString());

      if (isDeleted) {
        isLoading.value = true;
        await getCustomerWonBids();
        Get.snackbar("Bid Deleted", "The bid is deleted successfully");
      }
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> updateCustomerStatusByAdmin(String status) async {
    try {
      final isUpdated = await customersRepository.updateCustomerByAdmin(
          UpdateCustomerByAdmin(
              firstname: userData.firstname.toString(),
              lastname: userData.lastname.toString(),
              email: userData.email.toString(),
              mobilenumber: userData.phonenumber.toString(),
              mfaEnabled: userData.mfaEnabled.toString(),
              status: status,
              emiratesId: userData.emiratesId.toString(),
              address: userData.address.toString()),
          userData.id.toString());

      if (isUpdated) {
        userData.status = status == "true" ? true : false;
        await managecustomerController.getAllSignupCustomers();
        managecustomerController.paginateData();
        managecustomerController.update();
        Get.snackbar(
            "Customre Updated", "The customer status is updated successfully");
        update();
      }
    } catch (e) {
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  void filterDataByDateRange() {
    filteredData.assignAll(data.where((bid) {
      final bidDate = DateTime.parse(bid.date
          .toString()); // Assuming 'date' is a field in BidsWon and is in a valid date format
      return bidDate
              .isAfter(fromDate.value.subtract(const Duration(days: 1))) &&
          bidDate.isBefore(toDate.value.add(const Duration(days: 1)));
    }).toList());
  }
}
