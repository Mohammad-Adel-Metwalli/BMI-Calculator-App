import 'package:bmi_calculator_app/Feature/Result/Views/Widgets/try_again_button.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Utils/Functions/bmi_calculations.dart';
import '../../../../Core/Widgets/customed_title.dart';
import '../../../Data/Models/person_bmi.dart';
import 'all_bmi_details.dart';
import 'bmi_description.dart';
import 'bmi_widget.dart';

class ResultViewBody extends StatefulWidget
{
  const ResultViewBody({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  State<ResultViewBody> createState() => _ResultViewBodyState();
}

class _ResultViewBodyState extends State<ResultViewBody>
{
  double result = 0.0;

  @override
  void initState()
  {
    super.initState();
    result = bmiCalculations(height: widget.personBmi.height, weight: widget.personBmi.weight);
  }

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomedTitle(title: 'Your BMI is'),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),

            BmiWidget(result: result),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),

            const CustomedTitle(title: '(Normal)'),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

            AllBmiDetails(widget: widget),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

            BmiDescription(result: result),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

            const TryAgainButton(),
          ],
        ),
      ),
    );
  }
}