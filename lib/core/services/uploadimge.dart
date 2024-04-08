import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/view/screen/homepage/profile.dart'; // تأكد من تحديث المسار حسب موقع ملف Profile

class ImageController extends GetxController {
  var selectedImage = Rxn<File>();
  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>(); // يجب أن يكون هذا معرفًا في مكان يمكن الوصول إليه
  // تعريف المتحكمات هنا أو في الواجهة حيث يتم استخدامها
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController certificationsController =
      TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  // ... إضافة المزيد من المتحكمات لبقية الحقول

  void pickImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ["png", "jpg", "jpeg", "gif"],
    );

    if (result != null && result.files.single.path != null) {
      selectedImage.value = File(result.files.single.path!);
    }
  }

  Future<String?> saveImage() async {
    if (selectedImage.value != null) {
      var imagePath = selectedImage.value!.path;
      await GetStorage().write('selectedImagePath', imagePath);
      return imagePath; // إرجاع مسار الصورة
    }
    return null; // إرجاع null إذا لم يتم اختيار صورة
  }

  Future<void> saveProfileData() async {
    if (formKey.currentState!.validate()) {
      // حفظ الصورة
      var imagePath = await saveImage();

      // حفظ الحقول الأخرى
      await GetStorage().write('firstName', firstNameController.text);
      await GetStorage().write('lastName', lastNameController.text);
      await GetStorage().write('birthDate', birthDateController.text);
      await GetStorage().write('location', locationController.text);
      await GetStorage().write('skills', skillsController.text);
      await GetStorage().write('certifications', certificationsController.text);
      await GetStorage().write('about', aboutController.text);
      // ... قم بحفظ الحقول الأخرى بنفس الطريقة

      // الانتقال إلى صفحة البروفايل
      Get.off(() => Profile()); // تأكد من استخدام الدالة المناسبة للانتقال
    }
  }
}
