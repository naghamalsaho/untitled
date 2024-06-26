import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/controller/auth/information_controller.dart';
import 'package:untitled/core/class/crud.dart';

import 'package:untitled/core/services/services.dart';
import 'package:untitled/routes.dart';
import 'package:untitled/view/screen/auth/login.dart';

import 'view/screen/nnn.dart';
import 'view/screen/profile/profile.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  final ThemeController themeController = Get.put(ThemeController());

  Get.put(ThemeController());
  runApp(MyApp(
    themeController: themeController,
  ));
}

class MyApp extends StatelessWidget {
  final ThemeController themeController;
  const MyApp({super.key, required this.themeController});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(MyServices());
    Get.put(Crud());
    Get.put(InformationControllerImp());
    final ThemeController themeController = Get.find();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark Mode App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      //  title: 'Flutter Demo',
      // theme: ThemeData.light(),
      ////  darkTheme: ThemeData.dark(),

      // ThemeData.dark(),
      // themeController.themeData.value,
      /*  ThemeData(
        
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
        primarySwatch: Colors.purple,
      ),*/
      home: Login(),
      //nnn(),
      // Profile(),
      //ImagePickerWidget(),
      //Test(),
      // SettingsScreen(),
      //  HomeScreen(),
      //  DrawerOfApp(),
      // Information(),
      //switchstate(),
      // const Test(),

      //Login(),

      getPages: routes,
    );
  }
}
