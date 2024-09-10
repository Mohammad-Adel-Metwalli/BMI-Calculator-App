import 'package:animate_do/animate_do.dart';
import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:bmi_calculator_app/Feature/Home/Manager/height_choice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Core/Widgets/customed_title.dart';
import 'calculate_bmi_button.dart';
import 'choose_age.dart';
import 'choose_gender.dart';
import 'choose_height.dart';
import 'choose_weight.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  PersonBmi personBmi = PersonBmi(gender: '', height: 0, age: 0, weight: 0);

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomedTitle(title: 'Gender'),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

            FadeIn(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) => ChooseGender(personBmi: personBmi, index: index)),
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            const CustomedTitle(title: 'Height (cm)'),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

            Consumer<HeightChoice>(builder: (BuildContext context, value, Widget? child) => ChooseHeight(personBmi: personBmi, value: value)),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChooseAge(personBmi: personBmi),

                ChooseWeight(personBmi: personBmi),
              ],
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            CalculateBmiButton(personBmi: personBmi),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          ],
        ),
      ),
    );
  }
}