import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/test.dart';
import 'package:untitled/view/screen/auth/login.dart';

import 'core/constants/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
          headline2: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
          bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14),
          bodyText2: TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
        ),
        primarySwatch: Colors.blue,
      ),
      home:
          // const Test(),
          const Login(),
      routes: routes,
    );
  }
}
