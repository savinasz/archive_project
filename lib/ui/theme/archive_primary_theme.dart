import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String poppins = 'Poppins';
const double dimen8 = 8.0;
const double dimen16 = 16.0;
const double dimen24 = 24.0;
const double dimen32 = 32.0;
const double dimen40 = 40.0;

class ArchiveTheme {
  static const Color primaryColor = Color.fromARGB(255, 5, 153, 25);

  static TextStyle get primaryTextStyle => GoogleFonts.getFont(
    poppins,
    color: Colors.black87,
  );

  static TextStyle get title => GoogleFonts.getFont(
    poppins,
    fontWeight: FontWeight.bold,
    fontSize: 21,
  );

  static TextStyle get subTitle => GoogleFonts.getFont(
    poppins,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static TextStyle get bodyText => GoogleFonts.getFont(
    poppins,
    color: Colors.black54,
  );

  static TextStyle get hintText => GoogleFonts.getFont(
      poppins
  );
}

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.bold;
