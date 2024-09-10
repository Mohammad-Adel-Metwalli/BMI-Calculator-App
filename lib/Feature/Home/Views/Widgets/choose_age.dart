import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Widgets/customed_title.dart';
import 'choose_age_body.dart';

class ChooseAge extends StatelessWidget
{
  const ChooseAge({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const CustomedTitle(title: 'Age'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

        ChooseAgeBody(personBmi: personBmi),
      ],
    );
  }
}