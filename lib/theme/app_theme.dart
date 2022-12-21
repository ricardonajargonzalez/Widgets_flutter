import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primaria
      primaryColor: Colors.indigo,
      //appBar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
