import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/controller/auth/information_controller.dart';

import '../../core/services/uploadimge.dart';

class MyFormButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ImageController imageController = Get.find<ImageController>();
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController birthDateController;
  final TextEditingController locationController;
  final TextEditingController skillsController;
  final TextEditingController certificatesController;
  final TextEditingController aboutController;

  MyFormButton({
    required this.formKey,
    required this.firstNameController,
    required this.lastNameController,
    required this.birthDateController,
    required this.locationController,
    required this.skillsController,
    required this.certificatesController,
    required this.aboutController,
  });

  @override
  Widget build(BuildContext context) {
    final InformationControllerImp infoController =
        Get.find<InformationControllerImp>();

    return ElevatedButton(
      onPressed: () async {
        infoController.Information();
      },
      child: Text('حفظ البيانات'),
    );
  }
}
