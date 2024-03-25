

import 'package:dua_ruqyah/core/static/font_family.dart';
import 'package:flutter/material.dart';

final ThemeData duaLightTheme = ThemeData(
  textTheme: _textTheme(),
  scaffoldBackgroundColor: Color.fromARGB(255, 231, 226, 226),
  cardColor: Colors.white

);

TextTheme _textTheme() {
  return const TextTheme(
    bodySmall: TextStyle(color: Colors.black, fontFamily: FontFamily.poppins),
    bodyMedium: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    bodyLarge: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    displayLarge: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    displayMedium: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    displaySmall: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    headlineLarge: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    headlineMedium: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    headlineSmall: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    labelLarge: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    labelMedium: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    labelSmall: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    titleLarge: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    titleMedium: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
    titleSmall: TextStyle(color: Colors.black,  fontFamily: FontFamily.poppins),
  );
}

final ThemeData duaDarkTheme = ThemeData(

);