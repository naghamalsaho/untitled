import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/auth/checkemail_controller.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custombuttomauth.dart';
import 'package:untitled/view/widget/auth/customtextbodyauth.dart';
import 'package:untitled/view/widget/auth/customtexttitleauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          elevation: 0.0,
          title: Text(
            'Check Code',
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
                text: "Success SignUp",
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
              OtpTextField(
                borderRadius: BorderRadius.circular(20),
                fieldWidth: 50.0,
                numberOfFields: 6,
                borderColor: const Color.fromARGB(255, 129, 45, 168),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  // controller.goToResetPassword();
                }, // end onSubmit
              ),
              const SizedBox(
                height: 30,
              ),
              //   CustomTextFormAuth(
              //   mycontroller: controller.email,
              //  hinttext: "Enter Your Email",
              // labeltext: "Email",
              // iconData: Icons.email_outlined,
              // ),
              CustomButtomAuth(
                  text: "Check",
                  onPressed: () {
                    controller.goToSuccessSignUp();
                  }),
              const SizedBox(
                height: 30,
              ),
            ])));
  }
}
