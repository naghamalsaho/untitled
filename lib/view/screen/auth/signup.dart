import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/signup_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/core/constants/imageasset.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtextformauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled/view/widget/auth/textsignup.dart';

import '../../widget/auth/custombuttomauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text(
            'Sign Up',
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
                text: "Welcome Back",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text:
                      "Sign Up With Your Email And Password OR Continue With Google"),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                mycontroller: controller.username,
                hinttext: "Enter Your Username",
                labeltext: "Username",
                iconData: Icons.person_outline,
              ),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hinttext: "Enter Your Email",
                labeltext: "Email",
                iconData: Icons.email_outlined,
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hinttext: "Enter Your Password",
                labeltext: "Password",
                iconData: Icons.password_outlined,
              ),
              CustomButtomAuth(
                  text: "Sign Up",
                  onPressed: () {
                    controller.SignUp();
                  }),
              CustomButtomAuth2(
                text: "                           Login With Google  ",
                onPressed: () {},
                name: AppImageAsset.logo,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextSignUpOrSignIn(
                textone: "have an accunt ?  ",
                texttwo: "  Sign In",
                onTap: () {
                  controller.goToSignIn();
                },
              )
            ])));
  }
}
