import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'bmi_description_body.dart';

class BmiDescription extends StatelessWidget
{
  const BmiDescription({super.key, required this.result,});
  final double result;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 200.h,
      width: 400.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: grey.shade300, width: 3),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: BmiDescriptionBody(result: result),
      ),
    );
  }
}