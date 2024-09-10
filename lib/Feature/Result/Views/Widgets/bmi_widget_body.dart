import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class BmiWidgetBody extends StatelessWidget
{
  const BmiWidgetBody({super.key, required this.result,});
  final double result;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(result.toStringAsFixed(1), style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 28.sp)),
        Text('kg/m2', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 18.sp))
      ],
    );
  }
}