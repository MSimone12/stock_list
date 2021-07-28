import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../base/base_widget.dart';
import '../util/colors.dart';

class InputField extends BaseWidget {
  final double? width;
  final String label;
  final void Function(String?)? onChanged;
  final String? error;
  final bool password;
  final List<TextInputFormatter>? inputMask;

  InputField({
    this.width,
    required this.label,
    this.onChanged,
    this.error,
    this.password = false,
    this.inputMask,
  });

  bool get hasError => this.error != null && this.error!.isNotEmpty;

  UnderlineInputBorder getBorder({
    bool? enabled,
    bool? focused,
    bool? error,
  }) {
    Color borderColor = Colors.grey[300]!;

    if (focused ?? false) borderColor = AppColors.primary;
    if (error ?? false) borderColor = Colors.red[900]!;

    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width ?? Get.width,
      height: hasError ? 64 : 48,
      child: TextField(
        onChanged: this.onChanged,
        obscureText: this.password,
        inputFormatters: this.inputMask,
        decoration: InputDecoration(
          border: getBorder(),
          errorBorder: getBorder(error: true),
          focusedBorder: getBorder(focused: true),
          focusedErrorBorder: getBorder(error: true, focused: true),
          errorText: this.error,
          labelText: this.label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
