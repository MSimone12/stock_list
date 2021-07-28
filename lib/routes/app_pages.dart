import 'package:get/get.dart';
import 'package:stock_list/modules/login/login_binding.dart';

import '../modules/login/login_page.dart';
import '../modules/onboarding/onboarding_binding.dart';
import '../modules/onboarding/onboarding_page.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_page.dart';
import 'route_names.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: RouteNames.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteNames.onboarding,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
