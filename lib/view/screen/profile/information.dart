import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/controller/auth/information_controller.dart';
import 'package:untitled/core/class/crud.dart';
import 'package:untitled/view/widget/profile/contenertextofinformation.dart';

import '../../../core/services/uploadimge.dart';

class Information extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ImageController imageController = Get.put(ImageController());
  final InformationControllerImp infoController =
      Get.find<InformationControllerImp>();
  Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(InformationControllerImp());
    Get.put(Crud());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Center(
                child: Obx(() {
                  // Check if an image is selected
                  return MaterialButton(
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 90,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(60),
                        image: imageController.selectedImage.value != null
                            ? DecorationImage(
                                image: FileImage(
                                    imageController.selectedImage.value!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: imageController.selectedImage.value == null
                          ? Icon(Icons.add, color: Colors.white)
                          : null, // Show the add icon if no image is selected
                    ),
                    onPressed: () {
                      imageController.pickImage();
                    },
                  );
                }),
              ),
              Container(
                height: 20,
              ),
              Text(
                "INFORMATION",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              Container(
                height: 20,
              ),
              contenertextofinformation(),
            ],
          ),
        ),
      ),
    );
  }
}
