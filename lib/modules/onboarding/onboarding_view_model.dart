import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../routes/route_names.dart';

class OnboardingViewModel extends GetxController {
  final PageController pageController = PageController();

  void goToLogin() => Get.offNamed(RouteNames.login);

  final _currentPage = 0.obs;
  int get currentPage => _currentPage.value;
  void setCurrentPage(int page) => _currentPage.value = page;

  @override
  void onReady() {
    pageController.addListener(() {
      if (pageController.page != null)
        setCurrentPage(pageController.page!.round());
    });
    super.onReady();
  }
}
