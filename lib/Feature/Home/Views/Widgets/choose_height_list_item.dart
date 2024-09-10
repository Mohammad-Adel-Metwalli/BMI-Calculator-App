import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../Manager/height_choice.dart';

class ChooseHeightListItem extends StatelessWidget
{
  const ChooseHeightListItem({super.key, required this.value, required this.index,});
  final HeightChoice value;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(index.toString(), style: TextStyle(color: value.selectedIndex == index ? black : grey, fontWeight: FontWeight.bold, fontSize: value.selectedIndex == index ? 25.sp : 20.sp)),

        Container(
          height: value.selectedIndex == index ? 125.h : 100.h,
          width: 5.w,
          decoration: BoxDecoration(
            color: value.selectedIndex == index ? firstBlue : grey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}