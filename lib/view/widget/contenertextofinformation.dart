import 'package:flutter/material.dart';
import 'package:untitled/view/widget/customtextforminfo.dart';
import 'package:untitled/view/widget/myformbutton.dart';

class contenertextofinformation extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController certificatesController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  contenertextofinformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormInfo(
            labelText: "الاسم الأول",
            controller: firstNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'الرجاء إدخال الاسم الأول';
              }
              return null;
            },
          ),
          CustomTextFormInfo(
            labelText: "الاسم الأخير",
            controller: lastNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter lastname';
              }
              return null;
            },
          ),
          CustomTextFormInfo(
            labelText: "تاريخ الميلاد",
            controller: birthDateController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter';
              }
              return null;
            },
          ),
          CustomTextFormInfo(
            labelText: "الموقع",
            controller: locationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter';
              }
              return null;
            },
          ),
          CustomTextFormInfo(
            labelText: "المهارات",
            controller: skillsController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter';
              }
              return null;
            },
          ),
          CustomTextFormInfo(
            labelText: "الشهادات",
            controller: certificatesController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter';
              }
              return null;
            },
          ),
          CustomTextFormInfo(
            labelText: "نبذة عنك",
            controller: aboutController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter';
              }
              return null;
            },
          ),
          Center(
              child: MyFormButton(
            formKey: formKey,
            firstNameController: firstNameController,
            lastNameController: lastNameController,
            skillsController: skillsController,
            aboutController: aboutController,
            birthDateController: birthDateController,
            certificatesController: certificatesController,
            locationController: locationController,
          )),
        ],
      ),
    );
  }
}
