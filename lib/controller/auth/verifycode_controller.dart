import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkecode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifycode;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  checkecode() {}
}
