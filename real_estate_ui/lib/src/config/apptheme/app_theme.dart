import 'package:flutter/material.dart';
import 'package:projects/src/config/apptheme/colour_schemes.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColourScheme,
  );
}
