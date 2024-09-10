import 'package:flutter/material.dart';
import '../Utils/styles.dart';

class CustomedTitle extends StatelessWidget
{
  const CustomedTitle({super.key, required this.title,});
  final String title;

  @override
  Widget build(BuildContext context) => Text(title, style: Styles.titlesStyle);
}