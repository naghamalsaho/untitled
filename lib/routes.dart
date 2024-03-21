import 'package:flutter/material.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:untitled/view/screen/auth/login.dart';
import 'package:untitled/view/screen/auth/signup.dart';
import 'package:untitled/view/screen/auth/success_signup.dart';
import 'package:untitled/view/screen/onboarding.dart';

import 'view/screen/auth/forgetpassword/forgetpassword.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';
import 'view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'view/screen/auth/forgetpassword/verfiycode.dart';

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
  //OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
