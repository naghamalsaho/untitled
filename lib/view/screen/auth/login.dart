import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/login_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/core/constants/imageasset.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtextformauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled/view/widget/auth/logoauth.dart';
import 'package:untitled/view/widget/auth/textsignup.dart';

import '../../widget/auth/custombuttomauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text(
            'sign in',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(children: [
              LogoAuth(),
              const CustomTextTitleAuth(
                text: "Welcome Back",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text:
                      "Sign In With Your Email And Password OR Continue With Google"),
              const SizedBox(
                height: 15,
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
                iconData: Icons.visibility,
              ),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: const Text(
                  "Forget Password",
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtomAuth(text: "Sign In", onPressed: () {}),
              CustomButtomAuth2(
                text: "                           Login With Google  ",
                onPressed: () {},
                name: AppImageAsset.logo,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextSignUpOrSignIn(
                  textone: "Don't have an account ?",
                  texttwo: "SignUp",
                  onTap: () {
                    controller.goToSignUp();
                  })
            ])));
  }
}
