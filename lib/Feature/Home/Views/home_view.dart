import 'package:bmi_calculator_app/Core/Utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text('BMI Calculator', style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 22.sp)),
      ),

      backgroundColor: white,
      body: const HomeViewBody(),
    );
  }
}