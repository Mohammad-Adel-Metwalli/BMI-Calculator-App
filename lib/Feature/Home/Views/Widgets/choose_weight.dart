import 'package:flutter/cupertino.dart';
import '../../../../Core/Widgets/customed_title.dart';
import '../../../Data/Models/person_bmi.dart';
import 'choose_weight_body.dart';

class ChooseWeight extends StatelessWidget
{
  const ChooseWeight({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const CustomedTitle(title: 'Weight (kg)'),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

        ChooseWeightBody(personBmi: personBmi)
      ],
    );
  }
}