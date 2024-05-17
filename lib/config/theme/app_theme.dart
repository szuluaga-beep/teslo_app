import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorSeed = Color(0xff424CB8);
const scaffoldBackgroundColor = Color(0xFFF8F7F7);

class AppTheme {
  ThemeData getTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      // texts
      textTheme: TextTheme(
          titleLarge: GoogleFonts.comicNeue()
              .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.comicNeue()
              .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
          titleSmall: GoogleFonts.comicNeue()
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
      //Scaffold background color
      scaffoldBackgroundColor: scaffoldBackgroundColor,

      //Buttons

      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
              textStyle: MaterialStatePropertyAll(GoogleFonts.comicNeue()
                  .copyWith(fontWeight: FontWeight.w700)))),

      //AppBar
      appBarTheme: AppBarTheme(
          color: scaffoldBackgroundColor,
          titleTextStyle: GoogleFonts.comicNeue().copyWith(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)));
}
