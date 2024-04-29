import 'package:flutter/material.dart';
import 'package:untitled/view/screen/homepage/drawerOfappp.dart';

class nnn extends StatelessWidget {
  const nnn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // لا حاجة لاستخدام Builder هنا لأننا لا نحتاج إلى context لـ IconButton
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu), // أيقونة القائمة
              onPressed: () {
                // يمكن الآن استخدام Scaffold.of(context) بشكل صحيح
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text('nnn Page'),
      ),
      drawer: DrawerOfApp(), // تعيين الـ Drawer الخاص بك
      body: const Center(
        child: Text('محتوى الصفحة nnn'),
      ),
    );
  }
}
