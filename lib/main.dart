import 'package:bmi_calculator_app/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const BmiCalculatorApp());

class BmiCalculatorApp extends StatelessWidget
{
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,

      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      ),
    );
  }
}