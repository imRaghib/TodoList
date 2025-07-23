import 'package:flutter/material.dart';
typedef LightColors = DarkColors;
abstract class DarkColors {
  static Color get primary => const Color(0xFFFF5A36);
  static Color get onPrimary => const Color(0xFFFFFFFF);
  static Color get primaryContainer => const Color(0xFF4F378B);
  static Color get onPrimaryContainer => const Color(0xFFEADDFF);

  static Color get secondary => const Color(0xFF285d93);
  static Color get onSecondary => const Color(0xFF332D41);
  static Color get secondaryContainer => const Color(0xFF4A4458);
  static Color get onSecondaryContainer => const Color(0xFFE8DEF8);

  static Color get tertiary => const Color(0xFF2a5f60);
  static Color get onTertiary => const Color(0xFF492532);
  static Color get tertiaryContainer => const Color(0xFF633B48);
  static Color get onTertiaryContainer => const Color(0xFFFFD8E4);

  static Color get error => const Color(0xFFF2B8B5);
  static Color get onError => const Color(0xFF601410);
  static Color get errorContainer => const Color(0xFF8C1D18);
  static Color get onErrorContainer => const Color(0xFFF9DEDC);

  static Color get background => const Color(0xFFFFFFFF);
  static Color get onBackground =>  const Color(0xFF1C1B1F);
  static Color get surface => const Color(0xFFE6E1E5);
  static Color get onSurface => const Color(0xFF1C1B1F);
  static Color get outline => const Color(0xFF938F99);
  static Color get surfaceVariant => const Color(0xFF49454F);
  static Color get onSurfaceVariant => const Color(0xFFCAC4D0);

  static Color get greyColor => Colors.grey.withOpacity(0.7);
  static Color get surfBlackColors =>  const Color(0xFF2F2F2F);
  static Color get surfGreenColors =>  const Color(0xFF468D6C);
  static Color get surfBlueColor =>  const Color(0xFF598da9);
  static Color get surfDarkBlueColor =>  const Color(0xFF0D5E97);

}


class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}

