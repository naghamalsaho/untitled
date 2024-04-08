import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';

abstract class ProfileController extends GetxController {
  profile();
}

class ProfileControllerImp extends ProfileController {
  @override
  profile() {}
  @override
  goOffInformation() {
    Get.offNamed(AppRoute.information);
  }
}

@override
void onInit() {}

@override
void dispose() {}

@override
profile() {}
