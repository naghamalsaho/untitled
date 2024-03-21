import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/forgetpassword_controller.dart';
import 'package:untitled/controller/auth/resetpassword_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custombuttomauth.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtextformauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
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
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(children: [
              const CustomTextTitleAuth(
                text: "New Password",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(text: "Please Enter new Password"),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                labeltext: "Password",
                iconData: Icons.password_outlined,
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Re Enter Your Password",
                labeltext: "Password",
                iconData: Icons.password_outlined,
              ),
              CustomButtomAuth(
                  text: "save",
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  }),
              const SizedBox(
                height: 30,
              ),
            ])));
  }
}
