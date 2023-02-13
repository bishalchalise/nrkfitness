import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  ThemeData get lightPalette {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xffededed),
      brightness: Brightness.light,
      fontFamily: GoogleFonts.inter().fontFamily,
      colorScheme: ThemeData(
        brightness: Brightness.light,
      ).colorScheme.copyWith(
            primary: const Color(0xffF70000), //main color
            secondary: const Color(0xff000000), //primary text
            tertiary: const Color(0xffB5b5b5), //secondary text
            background: const Color(0xffEDEDED),
          ),
    );
  }

  ThemeData get darkPalette {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.inter().fontFamily,
      colorScheme: ThemeData(
        brightness: Brightness.dark,
      ).colorScheme.copyWith(
            primary: const Color(0xffF70000),
            secondary: const Color(0xffffffff),
            background: const Color(0xff212121),
          ),
    );
  }
}
