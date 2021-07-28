import 'package:flutter/material.dart';
import '../base/base_widget.dart';
import '../util/colors.dart';

class StepperWidget extends BaseWidget {
  final int? pageLength;
  final int? currentPage;

  StepperWidget({required this.pageLength, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: buildSteppers(pageLength ?? 0, currentPage ?? 0),
      ),
    );
  }

  List<Widget> buildSteppers(int length, int currentPage) => List.generate(
        length,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            color: currentPage == index ? AppColors.primary : Colors.grey[300],
          ),
        ),
      );
}
