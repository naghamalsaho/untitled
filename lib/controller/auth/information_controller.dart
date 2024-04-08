import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/class/crud.dart';
import 'package:untitled/core/class/statusrequest.dart';
import 'package:untitled/core/functions/handlingdata.dart';
import 'package:untitled/data/data_scource/remote/informationdata.dart';

abstract class InformationController extends GetxController {
  Information();
}

class InformationControllerImp extends InformationController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController birthDate;
  late TextEditingController location;
  late TextEditingController skills;
  late TextEditingController certificates;
  late TextEditingController about;

  StatusRequest statusRequest = StatusRequest.none;

  InformationData informationData = InformationData(Get.find());
  File? selectedImage;
  @override
  void onInit() {
    firstName = TextEditingController();
    lastName = TextEditingController();
    birthDate = TextEditingController();
    location = TextEditingController();
    skills = TextEditingController();
    certificates = TextEditingController();
    about = TextEditingController();

    // تسجيل Crud في GetX
    Get.put(Crud());

    // الآن يمكن إنشاء InformationData لأن Crud متاح
    informationData = InformationData(Get.find());
    super.onInit();
  }

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    birthDate.dispose();
    location.dispose();
    skills.dispose();
    certificates.dispose();
    about.dispose();

    super.dispose();
  }

  @override
  Information() async {
    print(
        ".......................................................................");

    statusRequest = StatusRequest.loading;
    update();
    print("=111111111111111111  Controller");

    try {
      var response = await informationData.postdata(
        firstName.text,
        lastName.text,
        birthDate.text,
        location.text,
        skills.text,
        certificates.text,
        about.text,
        selectedImage,
      );
      print("================$response  Controller");

      statusRequest = handlingData(response);
      print(statusRequest);
      print(".....................................................hhhhh");
      print(response);

      if (StatusRequest.success == statusRequest) {
        if (response?.statusCode == 201) {
          Get.snackbar(
            "نجاح",
            "تم حفظ البيانات بنجاح!",
            snackPosition: SnackPosition.BOTTOM,
          );
          print(
              "inforrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrmation");
        }
      } else {
        Get.snackbar(
          "خطأ",
          "حدث خطأ أثناء حفظ البيانات. الرجاء المحاولة مرة أخرى.",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        "استثناء",
        "حدث خطأ غير متوقع: $e",
        snackPosition: SnackPosition.BOTTOM,
      );
    }

    update();
  }
}
