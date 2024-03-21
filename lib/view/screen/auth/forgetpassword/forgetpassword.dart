import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/forgetpassword_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custombuttomauth.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtextformauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text(
            'Forget Password',
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
                text: "Check Email",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text:
                      "Please Enter Your Email Address To Recive A Verification Code"),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                labeltext: "Email",
                iconData: Icons.email_outlined,
              ),
              CustomButtomAuth(
                  text: "Check",
                  onPressed: () {
                    controller.goToVerfiyCode();
                  }),
              const SizedBox(
                height: 30,
              ),
            ])));
  }
}
