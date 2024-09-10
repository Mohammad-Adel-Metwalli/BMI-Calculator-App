import 'package:bmi_calculator_app/Feature/Result/Views/Widgets/result_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'all_bmi_details_body.dart';

class AllBmiDetails extends StatelessWidget
{
  const AllBmiDetails({super.key, required this.widget,});
  final ResultViewBody widget;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 150.h,
      width: 400.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: grey.shade300, width: 3),
      ),

      child: AllBmiDetailsBody(widget: widget),
    );
  }
}