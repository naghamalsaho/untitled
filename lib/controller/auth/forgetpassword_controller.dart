import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  checkemail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

  @override
  checkemail() {}
}
