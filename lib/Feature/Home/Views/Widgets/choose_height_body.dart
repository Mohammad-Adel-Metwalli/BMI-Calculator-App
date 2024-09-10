import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../Data/Models/person_bmi.dart';
import '../../Manager/height_choice.dart';
import 'choose_height_list_item.dart';

class ChooseHeightBody extends StatelessWidget
{
  const ChooseHeightBody({super.key, required this.value, required this.personBmi,});
  final HeightChoice value;
  final PersonBmi personBmi;

  @override
  Widget build(BuildContext context)
  {
    return CarouselSlider(
      items: List.generate(251, (index)
      {
        personBmi.height = value.selectedIndex;
        return ZoomIn(child: ChooseHeightListItem(value: value, index: index));
      }),

      options: CarouselOptions(
        enableInfiniteScroll: false,
        initialPage: 164,
        enlargeFactor: 0.2,
        viewportFraction: 0.2,
        enlargeCenterPage: true,
        onPageChanged: (currentIndex, _)
        {
          value.chosenHeight(chosenHeight: currentIndex);
          personBmi.height = value.selectedIndex;
        },
      ),
    );
  }
}