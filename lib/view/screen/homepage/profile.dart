import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:io';

import 'package:untitled/view/widget/wavecontainer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    final String firstName = box.read('firstName') ?? 'غير محدد';
    final String lastName = box.read('lastName') ?? 'غير محدد';
    final String birthDate = box.read('birthDate') ?? 'غير محدد';
    final String location = box.read('location') ?? 'غير محدد';
    final String skills = box.read('skills') ?? 'غير محدد';
    final String certifications = box.read('certifications') ?? 'غير محدد';
    final String about = box.read('about') ?? 'غير محدد';

    final imagePath = box.read('selectedImagePath') ?? '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("My Profile", style: TextStyle(color: Colors.black)),
        elevation: null,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: 90,
              height: 90,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(60),
                image: imagePath.isNotEmpty
                    ? DecorationImage(
                        image: FileImage(File(imagePath)),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: imagePath.isEmpty
                  ? const Icon(Icons.person, color: Colors.white, size: 40)
                  : null,
            ),
          ),
          const SizedBox(height: 50), // استخدام SizedBox للمسافة
          WaveContainer(
            height: 500, // يمكن تعديل الارتفاع حسب الحاجة لتجنب التداخل
            color: Colors.purple, // يمكن تعديل اللون حسب الحاجة
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        "firstName:",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$firstName",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "LastName:",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$lastName",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "birthDate:",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$birthDate",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "location:",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$location",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "skills:",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$skills",
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("certification:"),
                      Text(
                        "$certifications",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("about:"),
                      Text(
                        "$about",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
