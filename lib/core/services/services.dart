import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final GetStorage box = GetStorage();
  final String key = 'isDarkMode';

  ThemeMode get theme =>
      box.read(key) ?? false ? ThemeMode.dark : ThemeMode.light;

  void saveTheme(bool isDarkMode) {
    box.write(key, isDarkMode);
    update();
  }

  void changeTheme() {
    saveTheme(!isDarkMode);
    Get.changeThemeMode(isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }

  bool get isDarkMode => box.read(key) ?? false;
}

class MyServices extends GetxService {
  final box = GetStorage();
  Future<MyServices> init() async {
    await GetStorage.init();
//box= GetStorage.init([String container = 'GetStorage']);
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
