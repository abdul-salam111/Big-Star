// ignore_for_file: constant_identifier_names

class AppUrls {
  static const String baseApiKey = "https://api.bigstaruae.com/v1/";

  static const String loginByUid = "${baseApiKey}user/signinUid";

  static const String logoutUser = "${baseApiKey}user/signout";

  static const String getAllContainers = "${baseApiKey}get_all_containers";

  static const String getContainersCount = "${baseApiKey}containers_count";

  static const String getuserProfile = "${baseApiKey}user/signup";

  static const String getallsignupcustomers =
      "${baseApiKey}all_signups_customer";

  static const String deleteSingleCustomer = "${baseApiKey}delete_user/";

  static const String getIndividualCustomerWonbids = "${baseApiKey}bid_won/";

  static const String addCustomerByAdmin =
      "${baseApiKey}user/admin_signupuid_customer";

  static const String deleteWonBidsOfCustomerByAdmin =
      "${baseApiKey}delete_bid_won/";

  static const String updateCustomerByAdmin = "${baseApiKey}user/signup/";

  static const String getAllNotifications =
      "${baseApiKey}read_all_notifications";

  static const String getAllAuctions = "${baseApiKey}auctions_bigstar";
  static const String createNewAuction = "${baseApiKey}auctions_bigstar";
  static const String getBidsOfAnAuction =
      "${baseApiKey}read_customers_with_data/";
  static const String bidWonByCustomer = "${baseApiKey}bid_won";
  static const String getAllcustomerContacts =
      "${baseApiKey}contact_list_dropdown";
  static const String fetchCustomerDetailsByPhoneNumber =
      "${baseApiKey}customer_contact_detail";
  static const String addnewBids = "${baseApiKey}customer_data_to_cart";
  static const String admin_signupuid_bidadding_customer =
      "${baseApiKey}user/admin_signupuid_bidadding_customer";

  static const String addnewContainer = "${baseApiKey}container";
  static const String fetchSingleContainerDetails = "${baseApiKey}containers/";
  static const String updateStatus = "${baseApiKey}vehicles/update-status";
  static const String addNewVehicle = "${baseApiKey}user/vehicles";
  static const String addNewTruck = "${baseApiKey}user/trucks";
  static const String addNewPart = "${baseApiKey}user/spareparts";
  static const String deleteCar = "${baseApiKey}vehicle/";
  static const String deleteTruck = "${baseApiKey}truck/";
  static const String deleteSparePart = "${baseApiKey}sparepart/";
  static const String updateCar = "${baseApiKey}user/vehicles/";
  static const String updateTruck = "${baseApiKey}user/trucks/";
  static const String updatePart = "${baseApiKey}user/spareparts/";
  static const String getAllCarData = "${baseApiKey}display-vehicles-dynamic";
  static const String getAllTruckData = "${baseApiKey}display-trucks-dynamic";
  static const String getAllSparePartsData =
      "${baseApiKey}display-sparepart-dynamic";
  static const String register_bodytype = "${baseApiKey}register_bodytype";
  static const String register_transmission =
      "${baseApiKey}register_transmission";
  static const String register_color = "${baseApiKey}register_color";
  static const String register_displacement =
      "${baseApiKey}register_displacement";
  static const String register_drivetype = "${baseApiKey}register_drivetype";
  static const String register_score = "${baseApiKey}register_score";
  static const String changeAdminPassword =
      "${baseApiKey}change_admin_password";
  static const String getProductDetails = "${baseApiKey}user/vehicles_return";
  static const String getAllVehiclesUrl = "${baseApiKey}user/display_vehicles";
  static const String getAllTrucksUrl = "${baseApiKey}user/display_all_trucks";
  static const String getAllSparePartsUrl =
      "${baseApiKey}user/display_spareparts";
}
