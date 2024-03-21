import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() {}
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
