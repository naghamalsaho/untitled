import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class ResetPasswordController extends GetxController {
  ResetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetpassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  ResetPassword() {}
}
