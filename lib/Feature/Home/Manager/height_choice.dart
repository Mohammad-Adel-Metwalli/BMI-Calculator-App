import 'package:flutter/foundation.dart';

class HeightChoice extends ChangeNotifier
{
  int selectedIndex = 164;
  chosenHeight({required int chosenHeight})
  {
    selectedIndex = chosenHeight;
    notifyListeners();
  }
}