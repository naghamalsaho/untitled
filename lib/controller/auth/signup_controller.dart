import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class SinUpController extends GetxController {
  SignUp();
  goToSignIn();
}

class SignUpControllerImp extends SinUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  SignUp() {
    Get.offNamed(AppRoute.checkemail);
  }
}
