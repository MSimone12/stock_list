import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../base/base_widget.dart';
import '../util/colors.dart';
import '../util/text.dart';

class SecondaryButton extends BaseWidget {
  final void Function()? onPressed;
  final String text;

  SecondaryButton({this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: paragraph.copyWith(color: AppColors.primary),
        ),
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            BorderSide(
              color: AppColors.primary,
              width: 1.5,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
      ),
    );
  }
}
