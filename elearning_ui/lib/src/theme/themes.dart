import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  // 1
  static TextTheme lightTextTheme = const TextTheme(
    headline1: TextStyle(
      fontFamily: "Quicksand",
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: "Quicksand",
      fontSize: 16.0,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontFamily: "Quicksand",
      fontSize: 13.0,
      color: Colors.black,
    ),
  );
  // 2

  static ThemeData light() {
    return ThemeData(
      // useMaterial3: true,
      // primaryColor: Colors.green,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.grey[200],
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.pink,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            // textStyle: style,
            minimumSize: const Size(double.infinity, 60),
            backgroundColor: deepGreen),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          extendedTextStyle:
              TextStyle(fontWeight: FontWeight.bold, fontFamily: "Quicksand"),
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(139, 181, 136, 0),
          elevation: 5),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: deepGreen2,
          unselectedItemColor: lightGrey,
          selectedLabelStyle: lightTextTheme.headline2!.copyWith(fontSize: 14),
          unselectedLabelStyle:
              lightTextTheme.headline2!.copyWith(fontSize: 14),
          type: BottomNavigationBarType.fixed),
      textTheme: lightTextTheme,
    );
  }
}
