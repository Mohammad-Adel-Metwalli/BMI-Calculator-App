import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';
import '../../../Data/Models/person_bmi.dart';

class CalculateBmiButton extends StatelessWidget
{
  const CalculateBmiButton({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: 400.w,
      child: MaterialButton(
        color: firstBlue,
        height: 60.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () => GoRouter.of(context).push(resultViewPath, extra: personBmi),

        child: Center(child: Text('CALCULATE BMI', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 22.sp))),
      ),
    );
  }
}