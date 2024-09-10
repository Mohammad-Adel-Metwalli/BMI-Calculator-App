import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Models/person_bmi.dart';
import '../../Manager/height_choice.dart';
import 'choose_height_body.dart';

class ChooseHeight extends StatelessWidget
{
  const ChooseHeight({super.key, required this.personBmi, required this.value,});
  final PersonBmi personBmi;
  final HeightChoice value;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 250.h,
      width: 380.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: grey.shade300, width: 3),
      ),
      child: ChooseHeightBody(value: value, personBmi: personBmi),
    );
  }
}