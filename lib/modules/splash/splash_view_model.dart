import 'dart:async';

import 'package:get/get.dart';
import '../../routes/route_names.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      Get.offNamed(RouteNames.onboarding);
    });
  }
}
