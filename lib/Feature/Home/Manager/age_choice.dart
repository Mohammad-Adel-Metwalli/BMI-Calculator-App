import 'package:bmi_calculator_app/Feature/Data/Models/person_bmi.dart';
import 'package:flutter/cupertino.dart';

class AgeChoice extends ChangeNotifier
{
  int age = 22;
  chooseTheAge({required String currentAge, required PersonBmi personBmi})
  {
    if(age >= 0)
    {
      if(currentAge == '+')
      {
        age++;
        personBmi.age = age;
      }

      else
      {
        if(age > 0)
        {
          age--;
          personBmi.age = age;
        }
      }
    }
    notifyListeners();
  }
}