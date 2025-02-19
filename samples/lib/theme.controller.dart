import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  Future<void> toggleThemeMode() async {
    switch (_themeMode) {
      case ThemeMode.light:
        _themeMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        _themeMode = ThemeMode.light;
        break;
      default:
        _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
}
