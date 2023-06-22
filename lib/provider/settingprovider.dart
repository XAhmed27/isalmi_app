

import 'package:flutter/material.dart';

class SettingProvider  extends ChangeNotifier {
  String currentlocale="en";
  ThemeMode currentTheme=ThemeMode.dark;
  changeCurrentLocale(String newlocale)
  {
    currentlocale=newlocale;
    notifyListeners();
  }
  changeCurrentTheme(ThemeMode newtheme)
  {
    currentTheme=newtheme;
    notifyListeners();
  }
}
