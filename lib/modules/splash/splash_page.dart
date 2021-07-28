import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(
            Assets().logoIcon,
            width: Get.width / 2,
          ),
        ),
      ),
    );
  }
}
