import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kPrimaryColor = Color(0xFF5c40cc);
Color kBlackColor = Color(0xFF1f1449);
Color kWhiteColor = Color(0xffffffff);
Color kGreyColor = Color(0xFF9698a9);
Color kGreenColor = Color(0xFF0ec3ae);
Color kRedColor = Color(0xFFeb70a5);
Color kBackgroundColor = Color(0xFFfafafa);
Color kInactiveColor = Color(0xFFdbd7ec);
Color kTransparentColor = Colors.transparent;
Color kUnavailableColor = Color(0xFFEBECF1);
Color kAvailableColor = Color(0xFFe0d9ff);

TextStyle blackTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kBlackColor,
  ),
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kWhiteColor,
  ),
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kGreyColor,
  ),
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kGreenColor,
  ),
);

TextStyle redTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kRedColor,
  ),
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kPrimaryColor,
  ),
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400; 
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;