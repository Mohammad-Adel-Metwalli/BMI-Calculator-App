import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'choose_gender_body_items.dart';

class ChooseGenderBody extends StatelessWidget
{
  const ChooseGenderBody({super.key, required this.isSelected, required this.index,});
  final bool isSelected;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 175.h,
      width: 175.w,
      decoration: BoxDecoration(
        color: isSelected ? firstBlue.withOpacity(0.2) : grey.withOpacity(0.35),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected ? firstBlue : Colors.transparent, width: 3.5),
      ),

      child: ChooseGenderBodyItems(index: index, isSelected: isSelected),
    );
  }
}