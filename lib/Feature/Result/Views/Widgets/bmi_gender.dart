import 'package:bmi_calculator_app/Feature/Result/Views/Widgets/result_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';

class BmiGender extends StatelessWidget
{
  const BmiGender({super.key, required this.widget,});
  final ResultViewBody widget;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(widget.personBmi.gender == 'M' ? BoxIcons.bx_male : BoxIcons.bx_female, color: black, size: 60.h),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Text(widget.personBmi.gender == 'M' ? 'Male' : 'Female', style: TextStyle(color: grey, fontWeight: FontWeight.w700, fontSize: 15.sp)),
      ],
    );
  }
}