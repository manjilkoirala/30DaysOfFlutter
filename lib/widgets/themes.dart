// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static ThemeData get lightTheme => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );
  static Color creamColor = const Color(0xfff5f5f5);
  static Color myColor = const Color.fromARGB(255, 3, 35, 61);
}

//Colors


