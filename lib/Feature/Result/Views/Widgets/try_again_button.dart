import 'package:bmi_calculator_app/Feature/Result/Views/Widgets/try_again_button_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../Core/Utils/constant_colors.dart';

class TryAgainButton extends StatelessWidget
{
  const TryAgainButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: 400.w,
      child: MaterialButton(
        color: firstBlue,
        height: 60.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () => GoRouter.of(context).pop(),

        child: const TryAgainButtonBody(),
      ),
    );
  }
}