

import 'package:flutter/material.dart';

class SettingProvider  extends ChangeNotifier {
  String currentlocale="en";
  changeCurrentLocale(String newlocale)
  {
    currentlocale=newlocale;
    notifyListeners();
  }
}
