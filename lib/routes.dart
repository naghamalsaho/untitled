import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/core/middleware/mymiddleware.dart';
import 'package:untitled/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:untitled/view/screen/auth/login.dart';
import 'package:untitled/view/screen/auth/signup.dart';
import 'package:untitled/view/screen/auth/success_signup.dart';
import 'package:untitled/view/screen/lod.dart';
import 'package:untitled/view/screen/onboarding.dart';

import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';
import 'view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'view/screen/auth/forgetpassword/verfiycode.dart';
import 'view/screen/auth/verifycode_register.dart';
import 'view/screen/mainscreen/mainscreens.dart';
import 'view/screen/profile/information.dart';
import 'view/screen/profile/profile.dart';





List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const OnBoarding(), 
  middlewares: [MyMiddleWare()]),

 // GetPage(name: AppRoute.testscreen, page: () => const Test()),

  GetPage(name: AppRoute.log, page: () => Log()),
  //OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  //Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
 // GetPage(name: AppRoute.verfiyCodeForgetpassword, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verifyCodeRegister, page: () => const VerifyCodeRegister()),
 GetPage(name:AppRoute.profile,page: () => Profile(),),
  GetPage(name:AppRoute.information,page: () => Information(),),
  GetPage(name: AppRoute.mainScreen, page: () => const MainScreen()),
];









/*
Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.checkemail: (context) => const CheckEmail(),
  AppRoute.profile: (context) => Profile(),
  AppRoute.information: (context) => Information(),
  GetPage(name: AppRoute.log, page: () => Log()),
  //OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),*/

