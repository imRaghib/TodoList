import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
  );
}

TextTheme get textTheme => const TextTheme(
  displayLarge: TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 25.0,
    fontWeight: FontWeight.w700,
  ),
  displayMedium: TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 21.0,
    fontWeight: FontWeight.w700,
  ),

  displaySmall: TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 19.0,
    fontWeight: FontWeight.w700,
  ),

  headlineLarge: TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 18.0,

    fontWeight: FontWeight.w700,
  ),

  headlineMedium: TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 17.0,

    fontWeight: FontWeight.w700,
  ),

  headlineSmall: TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 16.0,

    fontWeight: FontWeight.w700,
  ),
  titleLarge: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 17.0,

    fontWeight: FontWeight.w400,
  ),
  titleMedium: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 15.0,

    fontWeight: FontWeight.w400,
  ),
  titleSmall: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 15.0,

    fontWeight: FontWeight.w400,
  ),
  bodyLarge: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 15.0,

    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 14.0,

    fontWeight: FontWeight.w400,
  ),
  bodySmall: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 14.0,

    fontWeight: FontWeight.w400,
  ),
  labelLarge: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 12.0,

    fontWeight: FontWeight.w400,
  ),
  labelMedium: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 11.0,

    fontWeight: FontWeight.w400,
  ),

  labelSmall: TextStyle(
    fontFamily: 'Montserrat-Regular',
    fontSize: 10.0,

    fontWeight: FontWeight.w400,
  ),
);
