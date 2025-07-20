import 'package:flutter/material.dart';

import 'colors_pallete.dart';

abstract class ThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: ColorsPallete.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsPallete.quranDetailsColor,
      iconTheme: IconThemeData(color: ColorsPallete.primaryColor),
      titleTextStyle: TextStyle(
        fontFamily: 'Janna',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ColorsPallete.primaryColor,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsPallete.primaryColor,
      //selectedIconTheme: IconThemeData(color: Colors.white),
      showSelectedLabels: true,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Janna',
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 12,
      ),
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'Janna',
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Janna',
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Janna',
        fontSize: 16,
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Janna',
        fontSize: 14,
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Janna',
        fontSize: 12,
        color: Color(0xFFFEFFE8),
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
