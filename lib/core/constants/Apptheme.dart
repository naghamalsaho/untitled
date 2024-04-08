import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/color.dart';

class ThemeController extends GetxController {
  var themeData = ThemeData.light().obs;
  ThemeData darktheme = ThemeData(
      scaffoldBackgroundColor: ThemeData.dark().scaffoldBackgroundColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColor.black,
        secondary: AppColor.primaryColor,
        onSecondary: AppColor.primaryColor,
      ),
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
      // iconTheme: IconThemeData(color: AppColor.iconColor)
      appBarTheme: AppBarTheme(
          backgroundColor: ThemeData.dark().scaffoldBackgroundColor));

  ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColor.primaryColor,
        secondary: AppColor.primaryColor,
        onSecondary: AppColor.primaryColor,
      ),
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
      // iconTheme: IconThemeData(color: AppColor.iconColor)
      appBarTheme: AppBarTheme(
          backgroundColor: ThemeData.light().scaffoldBackgroundColor));

  ThemeData lightTheme = ThemeData.light();
  void toggleTheme(bool isDarkMode) {
    themeData.value = isDarkMode ? darktheme : lightTheme;
  }
}
