import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/class/statusrequest.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/core/functions/handlingdata.dart';
import 'package:untitled/data/data_scource/remote/auth/verifycodesignup.dart';


abstract class VerifyCodeRegisterController extends GetxController {
  goToSuccessSignUp(String  verifycode);
}

VerifyCodeRegisterData verifyCodeRegisterData =
    VerifyCodeRegisterData(Get.find());
class VerifyCodeRegisterControllerImp extends VerifyCodeRegisterController {
  String? email;


  StatusRequest statusRequest = StatusRequest.none;
  @override
  goToSuccessSignUp(String  verifycode)async {


    statusRequest = StatusRequest.loading;
    update();
    print("=111111111111111111  Controller");

    var response = await verifyCodeRegisterData.postdata(verifycode);
    print("================$response  Controller");
    statusRequest = handlingData(response);
    print(statusRequest);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 200) {
    Get.offNamed(AppRoute.successSignUp);
      } else if (response['status'] == 422) {
        Get.defaultDialog(title: "Warning", middleText: "verification code is expire . ", 
         custom: MaterialButton(onPressed: (){} , child: Text("Re Send"),) );
        statusRequest = StatusRequest.failure;
      }
      
    }
    update();
  }


  Timer? timer;
  int remainingTime = 4;
  String get timerText =>
      '${(remainingTime ~/ 60).toString().padLeft(2, '0')}:${(remainingTime % 60).toString().padLeft(2, '0')}';

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (remainingTime > 0) {
        remainingTime--;
        update();
      } else {
        timer?.cancel();
      }
    });
  }

  void resendCode() {
    if (remainingTime == 0) {
      remainingTime = 4;
      startTimer();
       verifyCodeRegisterData.reSendCodeData(email!);


    }
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }



@override
  void onInit() {
    super.onInit();
        email = Get.arguments['email'];

    startTimer();
  }

  @override
  void dispose() {
   // email?.dispose();
    super.dispose();



  }
}