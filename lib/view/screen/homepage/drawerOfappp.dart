import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:untitled/view/screen/auth/login.dart';

class DrawerOfApp extends StatelessWidget {
  final SidebarXController sidebarController =
      SidebarXController(selectedIndex: 0);
  final DarkModeController darkModeController = Get.put(DarkModeController());

  final SidebarXController controller = SidebarXController(selectedIndex: 0);

  DrawerOfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        // هذا سيضع الشريط الجانبي على الجانب الأيسر
        child: Container(
          width: 80,
          child: Drawer(
            backgroundColor: Colors.white,
            child: Align(
              // heightFactor: 20,
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 80,
                height: 600,
                child: SidebarX(
                  controller: controller,
                  items: [
                    SidebarXItem(
                        icon: Icons.person_add,
                        label: '  My Profile',
                        onTap: () {
                          Get.off(Login());
                        }),
                    SidebarXItem(
                        icon: Icons.wb_sunny_outlined,
                        label: ' Dark Mode',
                        onTap: () {
                          darkModeController.toggleDarkMode();
                          Get.changeThemeMode(darkModeController.isDarkMode
                              ? ThemeMode.dark
                              : ThemeMode.light);
                          // Get.changeTheme(Get.isDarkMode
                          //   ? ThemeData.light()
                          // : ThemeData.dark());
                        }),
                    SidebarXItem(
                        icon: Icons.g_translate_outlined, label: 'Language'),
                    SidebarXItem(icon: Icons.logout, label: 'Logout'),
                  ],

                  /*  onTap: (index) {
                // تعيين الأحداث لكل عنصر عند النقر عليه
                switch (index) {
                  case 0:
                    // My Profile
                    Get.off(Login());
                    // هنا يمكنك إضافة منطق التنقل إلى صفحة الملف الشخصي
                    break;
                  case 1:
                    // Dark Mode
                    Get.changeTheme(
                        Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                    break;
                  case 2:
                    // Language
                    // هنا يمكنك إضافة منطق تغيير اللغة
                    break;
                  case 3:
                    // Logout
                    // هنا يمكنك إضافة منطق تسجيل الخروج
                    break;
                  default:
                    break;
                }
                      },*/
                ),
              ),
            ),
          ),
        ));
  }
}
/*
class NavigationController extends GetxController {
  final sidebarXController = SidebarXController(selectedIndex: 0);

  void navigateTo(int index) {
    // هنا يمكنك إضافة منطق التنقل الخاص بك
    // مثلاً تغيير الصفحة على أساس الـ index
    sidebarXController.selectIndex(index);
  }
}*/

class DarkModeController extends GetxController {
  final GetStorage _storage = GetStorage();
  final _key = 'isDarkMode';

  bool get isDarkMode => _storage.read(_key) ?? false;

  void toggleDarkMode() {
    bool newIsDarkMode = !isDarkMode;
    _storage.write(_key, newIsDarkMode);
    update(); // يُخبر GetX بتحديث الواجهات التي تستخدم هذا الـ Controller
  }
}
