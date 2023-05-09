import 'package:flutter/material.dart';

class MyThemeData{
  static const Color lightColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold,color: lightColor,
      ),

    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: lightColor,
      )
    )
  );
  static ThemeData darkTheme = ThemeData(

  );
}