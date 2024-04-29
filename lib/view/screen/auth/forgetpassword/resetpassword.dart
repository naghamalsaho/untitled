import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/resetpassword_controller.dart';
import 'package:untitled/core/class/handlingdataview.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/core/functions/validinput.dart';
import 'package:untitled/view/widget/auth/custombuttomauth.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtextformauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text(
            'ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: GetBuilder<ResetPasswordControllerImp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                        key: controller.formstate,
                        child: ListView(children: [
                          const CustomTextTitleAuth(
                            text: "New Password",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const CustomTextBodyAuth(
                              text: "Please Enter new Password"),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomTextFormAuth(
                            valid: (value) {
                              return isPasswordCompliant(value!);
                            },
                            mycontroller: controller.password,
                            hinttext: "Enter Your Password",
                            labeltext: "Password",
                            iconData: controller.isShowPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            obscureText: controller.isShowPassword,
                            onTapIcon: () {
                              controller.showPassWord();
                            },
                          ),
                          CustomTextFormAuth(
                            valid: (val) {
                              return validInput(val!, 8, 20, "password");
                            },
                            mycontroller: controller.repassword,
                            hinttext: "Re Enter Your Password",
                            labeltext: "rePassword",
                            iconData: controller.isShowPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            obscureText: controller.isShowPassword,
                            onTapIcon: () {
                              controller.showPassWord();
                            },
                          ),
                          CustomButtomAuth(
                              text: "save",
                              onPressed: () {
                                controller.goToSuccessResetPassword();
                              }),
                          const SizedBox(
                            height: 30,
                          ),
                        ]))))));
  }
}
