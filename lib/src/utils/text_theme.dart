import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeUtils {
  static TextTheme LightTextTheme = TextTheme(
    headline2: GoogleFonts.roboto(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: Colors.black,
  ),
    subtitle2: GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 14,
  color: Colors.black45,
  ),
  );

  static TextTheme DarkTextTheme = TextTheme(
    headline2: GoogleFonts.roboto(
      fontWeight: FontWeight.w600,
      fontSize: 24,
      color: Colors.white,
    ),
    subtitle2: GoogleFonts.roboto(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      color: Colors.white70,
    ),
  );
}