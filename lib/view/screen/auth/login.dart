import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/login_controller.dart';
import 'package:untitled/core/class/handlingdataview.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/core/constants/imageasset.dart';
import 'package:untitled/core/functions/alert_exit.dart';
import 'package:untitled/core/functions/validinput.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtextformauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';
import 'package:untitled/view/widget/auth/logoauth.dart';
import 'package:untitled/view/widget/auth/textsignup.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../widget/auth/custombuttomauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());

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
        body: GetBuilder<LoginControllerImp>(
            builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: WillPopScope(
                    onWillPop: alertExitApp,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 30),
                        child: Form(
                            key: controller.formstate,
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
                                valid: (val) {
                                  return validInput(val!, 5, 50, "email");
                                },
                                mycontroller: controller.email,
                                hinttext: "Enter Your Email",
                                labeltext: "Email",
                                iconData: Icons.email_outlined,
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
                              InkWell(
                                onTap: () {
                                  controller.goToForgetPassword();
                                },
                                child: const Text(
                                  "Forget Password",
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              CustomButtomAuth(
                                  text: "Sign In",
                                  onPressed: () {
                                    controller.login();
                                  }),
                              CustomButtomAuth2(
                                text:
                                    "                           Login With Google  ",
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
                            ])))))));
  }
}
