import 'package:animate_do/animate_do.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/age_choice.dart';
import 'package:bmi_calculator_app/Feature/Home/Views/Widgets/remove_and_add_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Models/person_bmi.dart';

class ChooseAgeBodyItems extends StatelessWidget
{
  const ChooseAgeBodyItems({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Consumer<AgeChoice>(
      builder: (BuildContext context, value, Widget? child)
      {
        personBmi.age = value.age;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RemoveAndAddIcon(sign: '-', onPressed: () => value.chooseTheAge(currentAge: '-', personBmi: personBmi)),

            FadeIn(child: Text(value.age.toString(), style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 30.sp))),

            RemoveAndAddIcon(sign: '+', onPressed: () => value.chooseTheAge(currentAge: '+', personBmi: personBmi)),
          ],
        );
      },
    );
  }
}