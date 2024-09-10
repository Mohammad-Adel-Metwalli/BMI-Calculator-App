import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Models/person_bmi.dart';
import 'choose_weight_body_items.dart';

class ChooseWeightBody extends StatelessWidget
{
  const ChooseWeightBody({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: grey.shade300, width: 3),
      ),

      child: ChooseWeightBodyItems(personBmi: personBmi),
    );
  }
}