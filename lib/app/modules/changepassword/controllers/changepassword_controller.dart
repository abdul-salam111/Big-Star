import 'package:auction_app/app/data/postModels/change_admin_password.dart';
import 'package:auction_app/app/utils/utils.dart';

import '../../modules.dart';

class ChangepasswordController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final currentPasswordController = TextEditingController().obs;
  final newPasswordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    currentPasswordController.value.dispose();
    newPasswordController.value.dispose();
    confirmPasswordController.value.dispose();
  }

  var isloading = false.obs;
  AuthRepository authRepository = AuthRepository();

  Future changeAdminPassword() async {
    try {
      isloading.value = true;
      final bool isTrue =
          await authRepository.changeAdminPassword(ChangeAdminPasswordModel(
        currentPassword: currentPasswordController.value.text.trim(),
        password: newPasswordController.value.text.trim(),
        confirmPassword: confirmPasswordController.value.text.trim(),
      ));
      isloading.value = false;
      if (isTrue) {
        Utils.anotherFlushbar(
            Get.context!, 'Password changed successfully', Colors.green);
      }
      Get.back();
    } catch (e) {
      isloading.value = false;
      Utils.anotherFlushbar(Get.context!, e.toString(), Colors.red);
      throw Exception(e);
    }
  }
}
