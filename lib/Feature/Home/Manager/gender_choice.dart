import 'package:flutter/material.dart';

class GenderChoice extends ChangeNotifier
{
  int selectedIndex = -1;

  chosenIndex({required int chosenIndex})
  {
    selectedIndex = chosenIndex;
    notifyListeners();
  }
}