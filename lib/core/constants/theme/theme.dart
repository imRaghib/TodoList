import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
  );
}

class AppTextStyle {
  static const TextStyle displaySmall = TextStyle(
    fontFamily: 'Montserrat-Medium',
    fontSize: 19.0,
    fontWeight: FontWeight.w700,
  );
}
