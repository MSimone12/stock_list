import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/assets.dart';

abstract class BaseWidget<T extends GetxController> extends StatelessWidget {
  final Assets assets = Assets();
  final Set<T?> _value = Set<T?>();

  T? get viewModel {
    if (_value.isEmpty) _value.add(Get.find<T>());
    return _value.first;
  }

  @override
  Widget build(BuildContext context);
}
