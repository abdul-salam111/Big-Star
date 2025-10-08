import '../modules/auctionModule/createnewauction/bindings/createnewauction_binding.dart';
import '../modules/auctionModule/createnewauction/views/createnewauction_view.dart';
import '../modules/containersModule/additemsTocontainerScanner/bindings/additems_tocontainer_scanner_binding.dart';
import '../modules/containersModule/additemsTocontainerScanner/views/additems_tocontainer_scanner_view.dart';
import '../modules/containersModule/get_productDetails_by_id/bindings/get_product_details_by_id_binding.dart';
import '../modules/containersModule/get_productDetails_by_id/views/get_product_details_by_id_view.dart';
import '../modules/customerModule/managecustomer/views/managecustomer_view.dart';
import '../modules/customerModule/updatecustomer/bindings/updatecustomer_binding.dart';
import '../modules/customerModule/updatecustomer/views/updatecustomer_view.dart';
import '../modules/display_products/displaySpareParts/bindings/display_spare_parts_binding.dart';
import '../modules/display_products/displaySpareParts/views/display_spare_parts_view.dart';
import '../modules/display_products/displayTrucks/bindings/display_trucks_binding.dart';
import '../modules/display_products/displayTrucks/views/display_trucks_view.dart';
import '../modules/display_products/displayVehicles/bindings/display_vehicles_binding.dart';
import '../modules/display_products/displayVehicles/views/display_vehicles_view.dart';
import '../modules/modules.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/productsModule/addnewsparepart/bindings/addnewsparepart_binding.dart';
import '../modules/productsModule/addnewsparepart/views/addnewsparepart_view.dart';
import '../modules/productsModule/addnewvehicle/bindings/addnewvehicle_binding.dart';
import '../modules/productsModule/addnewvehicle/views/addnewvehicle_view.dart';
import '../modules/productsModule/editproducttdetails/bindings/editproducttdetails_binding.dart';
import '../modules/productsModule/editproducttdetails/views/editproducttdetails_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
      name: _Paths.SCAN,
      page: () => const ScanView(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: _Paths.CONTAINER,
      page: () => const ContainerView(),
      binding: ContainerBinding(),
    ),
    GetPage(
      name: _Paths.ADDNEWCUSTOMER,
      page: () => const AddnewcustomerView(),
      binding: AddnewcustomerBinding(),
    ),
    GetPage(
      name: _Paths.MANAGECUSTOMER,
      page: () => const ManagecustomerView(),
      binding: ManagecustomerBinding(),
    ),
    GetPage(
      name: _Paths.MANAGECONTAINERS,
      page: () => const ManagecontainersView(),
      binding: ManagecontainersBinding(),
    ),
    GetPage(
      name: _Paths.ADDCONTAINER,
      page: () => const AddcontainerView(),
      binding: AddcontainerBinding(),
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => const ChangepasswordView(),
      binding: ChangepasswordBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.ADDNEWBID,
      page: () => const AddnewbidView(),
      binding: AddnewbidBinding(),
    ),
    GetPage(
      name: _Paths.AUCTIONREPORT_VEHICLES,
      page: () => const AuctionreportVehiclesView(),
      binding: AuctionreportVehiclesBinding(),
    ),
    GetPage(
      name: _Paths.AUCTIONS,
      page: () => const AuctionsView(),
      binding: AuctionsBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTDETAILS,
      page: () => ProductdetailsView(),
      binding: ProductdetailsBinding(),
    ),
    GetPage(
      name: _Paths.EDITPRODUCT,
      page: () => const EditproductView(),
      binding: EditproductBinding(),
    ),
    GetPage(
      name: _Paths.ADDNEWPRODUCT,
      page: () => const AddNewTruck(),
      binding: AddnewproductBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMERMANAGEMENT,
      page: () => const CustomermanagementView(),
      binding: CustomermanagementBinding(),
    ),
    GetPage(
      name: _Paths.EDITCONTAINERS,
      page: () => const EditcontainersView(),
      binding: EditcontainersBinding(),
    ),
    GetPage(
      name: _Paths.UPDATECUSTOMER,
      page: () => const UpdatecustomerView(),
      binding: UpdatecustomerBinding(),
    ),
    GetPage(
      name: _Paths.ADDITEMS_TOCONTAINER_SCANNER,
      page: () => const AdditemsTocontainerScannerView(),
      binding: AdditemsTocontainerScannerBinding(),
    ),
    GetPage(
      name: _Paths.CREATENEWAUCTION,
      page: () => const CreatenewauctionView(),
      binding: CreatenewauctionBinding(),
    ),
    GetPage(
      name: _Paths.EDITPRODUCTTDETAILS,
      page: () => const EditproducttdetailsView(),
      binding: EditproducttdetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADDNEWSPAREPART,
      page: () => const AddnewsparepartView(),
      binding: AddnewsparepartBinding(),
    ),
    GetPage(
      name: _Paths.ADDNEWVEHICLE,
      page: () => const AddnewvehicleView(),
      binding: AddnewvehicleBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.GET_PRODUCT_DETAILS_BY_ID,
      page: () => GetProductDetailsByIdView(),
      binding: GetProductDetailsByIdBinding(),
    ),
    GetPage(
      name: _Paths.DISPLAY_VEHICLES,
      page: () => const DisplayVehiclesView(),
      binding: DisplayVehiclesBinding(),
    ),
    GetPage(
      name: _Paths.DISPLAY_TRUCKS,
      page: () => const DisplayTrucksView(),
      binding: DisplayTrucksBinding(),
    ),
    GetPage(
      name: _Paths.DISPLAY_SPARE_PARTS,
      page: () => const DisplaySparePartsView(),
      binding: DisplaySparePartsBinding(),
    ),
  ];
}
