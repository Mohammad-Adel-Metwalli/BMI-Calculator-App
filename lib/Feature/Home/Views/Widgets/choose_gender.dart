import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/gender_choice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'choose_gender_body.dart';

class ChooseGender extends StatefulWidget
{
  const ChooseGender({super.key, required this.personBmi, required this.index,});
  final PersonBmi personBmi;
  final int index;

  @override
  State<ChooseGender> createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender>
{
  @override
  Widget build(BuildContext context)
  {
    return Consumer<GenderChoice>(
      builder: (BuildContext context, value, Widget? child)
      {
        return GestureDetector(
          onTap: ()
          {
            value.chosenIndex(chosenIndex: widget.index);
            widget.index == 0 ? widget.personBmi.gender = 'M' : widget.personBmi.gender = 'F';
          },
          child: ChooseGenderBody(isSelected: value.selectedIndex == widget.index, index: widget.index),
        );
      },
    );
  }
}