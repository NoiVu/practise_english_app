import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool isDarkModeEnabled = false;
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  getThemeData() => _themeData;
  setThemeData(ThemeData theme) {
    if (isDarkModeEnabled == false) {
      isDarkModeEnabled = true;
    } else {
      isDarkModeEnabled = false;
    }
    _themeData = theme;
    notifyListeners();
    // theme.pr
  }
}
