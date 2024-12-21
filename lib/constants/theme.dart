import 'package:calculator_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: CColors.primary,
    scaffoldBackgroundColor: CColors.light,
    appBarTheme: const AppBarTheme(color: CColors.lightAppbar),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: CColors.primary,
    scaffoldBackgroundColor: CColors.dark,
    appBarTheme: const AppBarTheme(color: CColors.darkAppbar),
  );
}
