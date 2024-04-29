import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/class/statusrequest.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/core/functions/handlingdata.dart';
import 'package:untitled/core/services/services.dart';
import 'package:untitled/data/data_scource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
   GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
    bool isShowPassword = true;
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find();

  showPassWord() {
    isShowPassword = isShowPassword == true ? false : true;

    update();
  }
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
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      print("=111111111111111111  Controller");
      var response = await loginData.postdata(email.text, password.text);
      print("================$response  Controller");
      statusRequest = handlingData(response);
      print(statusRequest);

      if (StatusRequest.success == statusRequest) {
        if (response["status"] == 200) {
          myServices.box.write("token", "${response["data"]["token"]}");
          myServices.box.write("id", "${response["data"]["user"]["id"]}");
          myServices.box.write("email", "${response["data"]["user"]["email"]}");
          myServices.box.write("user_name", "${response["data"]["user"]["user_name"]}");
          myServices.box.write("step", "2");

          print("token ${response["data"]["token"]}");
          Get.offNamed(AppRoute.log);
        } else if (response['status'] == 401) {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Email & password does not match with our record.");
        }
      }
      update();
    } else {}
  }
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
