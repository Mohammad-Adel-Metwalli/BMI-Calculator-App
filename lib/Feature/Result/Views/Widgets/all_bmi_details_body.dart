import 'package:bmi_calculator_app/Feature/Result/Views/Widgets/result_view_body.dart';
import 'package:flutter/material.dart';
import 'bmi_details.dart';
import 'bmi_gender.dart';

class AllBmiDetailsBody extends StatelessWidget
{
  const AllBmiDetailsBody({super.key, required this.widget,});
  final ResultViewBody widget;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BmiGender(widget: widget),
        BmiDetails(widget: widget, title: 'Age', bmiDetail: widget.personBmi.age.toString()),
        BmiDetails(widget: widget, title: 'Height', bmiDetail: widget.personBmi.height.toString()),
        BmiDetails(widget: widget, title: 'Weight', bmiDetail: widget.personBmi.weight.toString()),
      ],
    );
  }
}