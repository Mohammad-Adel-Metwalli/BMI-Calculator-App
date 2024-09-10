import 'package:bmi_calculator_app/Core/Utils/constant_colors.dart';
import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'Widgets/result_view_body.dart';

class ResultView extends StatelessWidget
{
  const ResultView({super.key, required this.personBmi});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(onPressed: () => GoRouter.of(context).pop(), icon: Icon(CupertinoIcons.chevron_back, color: black, size: 30.h)),
        title: Text('Back', style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20.sp)),
      ),

      body: ResultViewBody(personBmi: personBmi),
    );
  }
}