import 'package:bmi_calculator_app/Core/Utils/constants.dart';
import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/age_choice.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/gender_choice.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/height_choice.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/weight_choice.dart';
import 'package:bmi_calculator_app/Feature/Home/Views/home_view.dart';
import 'package:bmi_calculator_app/Feature/Result/Views/result_view.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => GenderChoice()),
            ChangeNotifierProvider(create: (context) => HeightChoice()),
            ChangeNotifierProvider(create: (context) => AgeChoice()),
            ChangeNotifierProvider(create: (context) => WeightChoice()),
          ],

          child: const HomeView(),
        ),
      ),

      GoRoute(
        path: resultViewPath,
        builder: (context, state) => ResultView(personBmi: state.extra as PersonBmi),
      ),
    ],
  );
}