import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
  goToSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
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
