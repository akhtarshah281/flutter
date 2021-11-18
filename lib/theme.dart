import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static final Color _iconColor = Colors.blueAccent.shade200;
  static const Color _primaryColor = Color(0xFF546e7a);
  static const Color _lightPrimaryColor = Color(0xFF819ca9);
  static const Color _lightPrimaryVariantColor = Color(0xFF546E7A);
  static const Color _secondaryColor = Color(0xFFfdd835);
  static const Color _lightSecondaryColor = Colors.green;
  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _darkPrimaryColor = Color(0xFF29434e);
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;

  static const Color darkOnPrimaryColor = Color(0xFF29434e);
  static const Color lightPrimaryColor = Color(0xFF819ca9);






  static final ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: _darkSecondaryColor,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
          fontSize: 24
         ),
        color: _primaryColor,
        iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      ),
      colorScheme: const ColorScheme.light(
        primary: _primaryColor,
        primaryVariant: _lightPrimaryVariantColor,
        secondary: _darkPrimaryColor,
        onPrimary: _lightPrimaryColor,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _lightTextTheme,
      dividerTheme: const DividerThemeData(color: Colors.black12));

  static const TextTheme _lightTextTheme =
      TextTheme(button: _lightScreenHeading1TextStyle);
  static const TextStyle _lightScreenHeading1TextStyle =
      TextStyle(color: _darkSecondaryColor, fontFamily: "Roboto"
      );
}
