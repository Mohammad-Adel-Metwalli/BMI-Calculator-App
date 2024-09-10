import 'package:bmi_calculator_app/Feature/Result/Views/Widgets/result_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class BmiDetails extends StatelessWidget
{
  const BmiDetails({super.key, required this.widget, required this.title, required this.bmiDetail,});
  final String title;
  final String bmiDetail;
  final ResultViewBody widget;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(bmiDetail, style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 40.sp)),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.022),

        Text(title, style: TextStyle(color: grey, fontWeight: FontWeight.w700, fontSize: 15.sp)),
      ],
    );
  }
}