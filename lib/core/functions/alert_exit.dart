import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future <bool>alertExitApp() {
  Get.defaultDialog(title: "Warn ", middleText: "Want to exit", actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: const Text("Confirm")),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: const Text("Cancel")),
  ]);
  return Future.value(true);
}
