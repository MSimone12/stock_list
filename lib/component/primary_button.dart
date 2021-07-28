import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base_widget.dart';
import '../util/colors.dart';
import '../util/text.dart';

class PrimaryButton extends BaseWidget {
  final void Function()? onPressed;
  final String text;

  PrimaryButton({this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: paragraph.copyWith(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
        ),
      ),
    );
  }
}
