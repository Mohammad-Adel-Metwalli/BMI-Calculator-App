import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';

class ChooseGenderBodyItems extends StatelessWidget
{
  const ChooseGenderBodyItems({super.key, required this.index, required this.isSelected,});
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(index == 0 ? BoxIcons.bx_male : BoxIcons.bx_female, size: 100.h, color: isSelected ? firstBlue : grey.shade600),

              Text(index == 0 ? 'Male' : 'Female', style: TextStyle(color: black, fontSize: 15.sp, fontWeight: FontWeight.w600)),
            ],
          ),
        ),

        isSelected ? Positioned(
          left: MediaQuery.sizeOf(context).width * 0.3,
          top: MediaQuery.sizeOf(context).height * 0.01,
          child: const Icon(Icons.check_circle, color: firstBlue),
        ) : const SizedBox.shrink(),
      ],
    );
  }
}