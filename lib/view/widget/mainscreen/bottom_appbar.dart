import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/mainscreen/mainscreen.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/mainscreen/bottom_bar_item.dart';
import 'package:untitled/view/widget/mainscreen/customclipper_bottom_bar.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationController controller = Get.put(NavigationController());

    return
     Obx(()=> BottomAppBar(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(4, (index) {
                  return InkWell(
                    onTap: () => controller.changeTabIndex(index),
                    child: CustamTapBottomItem(
                      index: index,
                      icon: index == 0
                          ? Icons.home
                          : index == 1
                              ? Icons.favorite
                              : index == 2
                                  ? Icons.settings
                                  : Icons.person,
                      isSelected: controller.tabIndex.value == index,
                    ),
                  );
                }),
              ),)
            );
  }
}