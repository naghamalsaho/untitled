import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/view/screen/profile/profile.dart';

class ImageController extends GetxController {
  var selectedImage = Rxn<File>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController certificationsController =
      TextEditingController();
  final TextEditingController aboutController = TextEditingController();

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
      return imagePath;
    }
    return null;
  }

  Future<void> saveProfileData() async {
    if (formKey.currentState!.validate()) {
      var imagePath = await saveImage();

      await GetStorage().write('firstName', firstNameController.text);
      await GetStorage().write('lastName', lastNameController.text);
      await GetStorage().write('birthDate', birthDateController.text);
      await GetStorage().write('location', locationController.text);
      await GetStorage().write('skills', skillsController.text);
      await GetStorage().write('certifications', certificationsController.text);
      await GetStorage().write('about', aboutController.text);

      Get.off(() => Profile());
    }
  }
}
