import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/verifycode_register_controller.dart';
import 'package:untitled/core/class/handlingdataview.dart';

import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';

class VerifyCodeRegister extends StatelessWidget {
  const VerifyCodeRegister({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
        Get.put(VerifyCodeRegisterControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          elevation: 0.0,
          title: Text(
            "27".tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body:
        GetBuilder<VerifyCodeRegisterControllerImp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget:
                  
         Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(children: [
               CustomTextTitleAuth(
                text: "28".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              //  CustomTextBodyAuth(
              //     text:
              //        "29".tr),
              const SizedBox(
                height: 15,
              ),
              OtpTextField(
                borderRadius: BorderRadius.circular(20),
                focusedBorderColor: AppColor.primaryColor,
                cursorColor: AppColor.grey,
                fieldWidth: 42.0,
                numberOfFields: 6,
                borderColor: const Color.fromARGB(255, 129, 45, 168),
                
                showFieldAsBox: true,
                onCodeChanged: (String code) {
                },
                onSubmit: (String verificationCode) {
                 // Get.toNamed(AppRoute.successSignUp);
                   controller.goToSuccessSignUp(verificationCode);
                }, 
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),

  GetBuilder<VerifyCodeRegisterControllerImp>(
                      builder: (controller) => InkWell(
                        onTap: controller.remainingTime == 0
                            ? controller.resendCode
                            : null,
                        
                          child: Text(
                            textAlign: TextAlign.end,
                            controller.remainingTime > 0
                                ? " ${"30".tr} ${controller.timerText}"
                                : "31".tr,
                            style: TextStyle(
                               
                                color: controller.remainingTime > 0
                                    ? AppColor.grey
                                    : AppColor.primaryColor,
                                fontWeight: FontWeight.bold),
                          
                        ),
                      ),
                    ),
            ])
                ),
      )
    ));
  }
}