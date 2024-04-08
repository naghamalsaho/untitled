import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var isSwitched = false.obs;
  void toggleSwitch(bool value) {
    isSwitched(value);
  }
}
