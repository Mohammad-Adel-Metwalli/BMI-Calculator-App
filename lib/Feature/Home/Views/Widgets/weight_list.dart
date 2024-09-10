import 'package:animate_do/animate_do.dart';
import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../Manager/weight_choice.dart';

class WeightList extends StatelessWidget
{
  const WeightList({super.key, required this.personBmi});
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return Consumer<WeightChoice>(
      builder: (BuildContext context, value, Widget? child)
      {
        return CarouselSlider(
          items: List.generate(201, (index)
          {
            personBmi.weight = value.selectedIndex;
            return ZoomIn(child: Text(index.toString(), style: TextStyle(color: value.selectedIndex == index ? black : grey, fontWeight: FontWeight.bold, fontSize: value.selectedIndex == index ? 25.sp : 20.sp)));
          }),

          options: CarouselOptions(
            enableInfiniteScroll: false,
            initialPage: value.selectedIndex,
            viewportFraction: 0.3,
            enlargeCenterPage: true,
            height: 50.h,
            onPageChanged: (currentIndex, _)
            {
              value.chosenHeight(chosenHeight: currentIndex);
              personBmi.weight = value.selectedIndex;
            },
          ),
        );
      },
    );
  }
}