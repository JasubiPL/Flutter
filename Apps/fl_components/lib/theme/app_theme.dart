import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.cyan;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,


    //Appbar Theme
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: primary,
      elevation: 0
    )
  );

  static final ThemeData darckTheme = ThemeData.dark().copyWith(
    primaryColor: primary,


    //Appbar Theme
    appBarTheme: const AppBarTheme(
      foregroundColor: Colors.white,
      backgroundColor: primary,
      elevation: 0
    )
  );
}