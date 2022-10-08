import 'package:flutter/material.dart';

mixin ThemeDataSW implements ThemeData {
  static final themeDataSW = ThemeData(
    brightness: Brightness.dark,
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromARGB(255, 19, 22, 31)),
    colorScheme: ColorScheme.fromSeed(
        surface: Colors.white,
        primary: const Color.fromARGB(255, 240, 194, 81),
        background: const Color.fromARGB(255, 87, 134, 240),
        secondary: const Color.fromARGB(45, 112, 153, 255),
        inversePrimary: const Color.fromARGB(255, 240, 194, 81),
        tertiary: const Color.fromARGB(255, 46, 219, 138),
        error: const Color.fromARGB(255, 235, 53, 44),
        brightness: Brightness.dark,
        seedColor: const Color.fromARGB(255, 81, 126, 240)),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'starwars',
          color: Color.fromARGB(255, 240, 194, 81)),
      headline2: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255)),
      headline6: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 24.0,
          fontFamily: 'starwars',
          color: Color.fromARGB(255, 240, 194, 81)),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
  );
}
