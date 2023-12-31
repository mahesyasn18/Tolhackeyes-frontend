import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

Color textPrimary = Color(0xffFFFCF7);
Color textSecondary = Color(0xff000000);
Color textPriceMin = Color(0xffFF0000);
Color textSubtitle = Color(0xff676D75);
Color textInput = Color.fromARGB(255, 0, 13, 17).withOpacity(0.8);
Color textSecondary2 = Color(0xff03242C).withOpacity(0.83);
Color textLink = Color(0xff568AC3);
Color textButtonSignup = Color(0xff012E40);
Color bgButtonSignUp = Color(0xff27BDDE);
Color bgInput = Color.fromARGB(255, 243, 243, 243);
Color lineColor = Color(0xff454563).withOpacity(0.5);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: textPrimary,
);

TextStyle priceMinTextStyle = GoogleFonts.poppins(
  color: textPriceMin,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: textSubtitle,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: textSecondary,
);

TextStyle secondaryTextStyle2 = GoogleFonts.poppins(
  color: textSecondary2,
);

TextStyle inputTextStyle = GoogleFonts.poppins(
  color: textInput,
);

TextStyle LinkTextStyle = GoogleFonts.poppins(
  color: textLink,
);

TextStyle buttonSignUpTextStyle = GoogleFonts.poppins(
  color: textButtonSignup,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

final boxDecorationForm = BoxDecoration(
  color: bgInput,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
