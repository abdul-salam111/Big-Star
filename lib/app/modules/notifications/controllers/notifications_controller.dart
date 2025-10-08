import 'package:auction_app/app/data/getModels/get_all_notifications.dart';
import 'package:get/get.dart';

class NotificationsController extends GetxController {
  List<GetAllNotifications> notifications = [];

  @override
  void onInit() {
    super.onInit();
    notifications = List.from(Get.arguments.reversed);
  }
}
