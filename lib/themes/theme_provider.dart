import 'package:deli/themes/light_mode.dart';
import 'package:deli/themes/dark_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set ThemeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  /// Toggles the theme between light mode and dark mode.
  void toggleTheme(){
    if(_themeData == lightMode){
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }
    notifyListeners();
  }

}