import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//const primaryColor = Color.fromARGB(255, 204, 88, 37);
//const secondaryColor = Color.fromARGB(255, 246, 220, 191);
//const tertiaryColor = Color.fromARGB(255, 18, 78, 97);

const primaryColor = Color(0xffEC6835);
const secondaryColor = Color(0xffD9D9D9);
const bodyColor = Color(0xffFFFFFF);
const tertiaryColor = Color.fromARGB(255, 18, 78, 97);
const textColor = Color(0xff000000);

TextStyle paragraph = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ),
);
TextStyle h1 = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: textColor,
    fontSize: 36,
    fontWeight: FontWeight.w600,
  ),
);
TextStyle h2 = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: textColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
);
TextStyle h3 = GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: textColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
);

// Definitions of the pixel widths of different screen sizes. Eg, a compactScreen is a screen <=650 pixels wide
const compactScreenSize = 650;
const mediumScreenSize = 840;
const reducedScreenSize = 1200;

// The size of the icons on the topBar compared to the height of the topBar
const double topBarIconScaleFactor = 0.7;
// The height of the main top bar
const double topBarHeight = 50;

// The width of the sideBar on the repPage
const double sideBarWidth = 400;

