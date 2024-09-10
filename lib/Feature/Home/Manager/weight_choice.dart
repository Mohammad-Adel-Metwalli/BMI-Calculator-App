import 'package:flutter/foundation.dart';

class WeightChoice extends ChangeNotifier
{
  int selectedIndex = 52;
  chosenHeight({required int chosenHeight})
  {
    selectedIndex = chosenHeight;
    notifyListeners();
  }
}