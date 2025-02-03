import 'package:flutter/material.dart';

abstract class ThemeService {
  Future<ThemeMode> themeMode() async => ThemeMode.light;

  Future<void> updateThemeMode(ThemeMode theme);
}
