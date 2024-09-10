import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class TryAgainButtonBody extends StatelessWidget
{
  const TryAgainButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('TRY AGAIN', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 22.sp)),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const Icon(Icons.refresh_rounded, color: white),
      ],
    );
  }
}