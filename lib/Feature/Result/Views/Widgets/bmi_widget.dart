import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'bmi_widget_body.dart';

class BmiWidget extends StatelessWidget
{
  const BmiWidget({super.key, required this.result,});
  final double result;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 120.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: firstBlue,
      ),

      child: BmiWidgetBody(result: result),
    );
  }
}