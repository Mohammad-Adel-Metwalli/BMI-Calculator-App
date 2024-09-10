import 'package:bmi_calculator_app/Feature/Home/Views/Widgets/weight_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Models/person_bmi.dart';

class ChooseWeightBodyItems extends StatelessWidget
{
  const ChooseWeightBodyItems({super.key, required this.personBmi,});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Icon(CupertinoIcons.arrowtriangle_down_fill, color: firstBlue, size: 30.h),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.005),

        WeightList(personBmi: personBmi),
      ],
    );
  }
}