import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';
import 'routes/route_names.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: RouteNames.splash,
      theme: ThemeData(
        fontFamily: 'DINPro',
      ),
    ),
  );
}
