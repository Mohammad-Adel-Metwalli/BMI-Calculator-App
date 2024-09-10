import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class BmiDescriptionBody extends StatelessWidget
{
  const BmiDescriptionBody({super.key, required this.result,});
  final double result;

  @override
  Widget build(BuildContext context)
  {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: 'A BMI of ',
            style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 15.sp),
          ),

          TextSpan(
            text: result < 18.5 ? '< 18.5' : (result >= 18.5 && result < 25 ? '18.5 - 25' : (result >= 25 && result < 30 ? '25 - 30' : '>= 30')),
            style: TextStyle(color: firstBlue, fontWeight: FontWeight.bold, fontSize: 15.sp),
          ),

          TextSpan(
            text: ' indicated that your weight is in the ',
            style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 15.sp),
          ),

          TextSpan(
            text: result < 18.5 ? 'underweight' : (result >= 18.5 && result < 25 ? 'normal' : (result >= 25 && result < 30 ? 'overweight' : 'obese')),
            style: TextStyle(color: firstBlue, fontWeight: FontWeight.bold, fontSize: 15.sp),
          ),

          TextSpan(
            text: ' category for a person of your height.\n\n',
            style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 15.sp),
          ),

          TextSpan(
            text: 'Maintaining a healthy weight reduce them risk of diseases associated with overweight and obesity.',
            style: TextStyle(color: black, fontWeight: FontWeight.w600, fontSize: 15.sp),
          ),
        ],
      ),
    );
  }
}