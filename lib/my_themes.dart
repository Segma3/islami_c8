import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color lightColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
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
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkColor,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: yellowColor,
        selectedLabelStyle: TextStyle(color: yellowColor),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.black),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: darkColor,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: yellowColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          )));
}