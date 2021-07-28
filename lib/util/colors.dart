import 'package:flutter/material.dart';

class AppColors {
  static final Color primary = stringToColor('#4BAED3');
}

Color stringToColor(String customColor) {
  customColor = customColor.toLowerCase();
  customColor = customColor.replaceAll('0x', '').replaceAll('#', '');
  customColor = customColor.padLeft(8, 'f');
  return Color(int.parse(customColor, radix: 16));
}
