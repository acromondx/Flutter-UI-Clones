import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  static TextTheme lightTextTheme = const TextTheme(
    headline1: TextStyle(
      fontFamily: "Quicksand",
      fontSize: 16.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w500,
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
      // useMaterial3: false,
      primaryColor: primaryColor,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        // foregroundColor: Colors.green,
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

            // textStyle: style,
            minimumSize: const Size(double.infinity, 60),
            backgroundColor: primaryColor),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          extendedTextStyle:
              TextStyle(fontWeight: FontWeight.bold, fontFamily: "Quicksand"),
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(139, 181, 136, 0),
          elevation: 5),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: lightTextTheme.headline2!.copyWith(fontSize: 14),
          unselectedLabelStyle:
              lightTextTheme.headline2!.copyWith(fontSize: 14),
          type: BottomNavigationBarType.fixed),
      textTheme: lightTextTheme,
    );
  }
}
