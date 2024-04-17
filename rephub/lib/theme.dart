import 'package:flutter/material.dart';

class AppTheme {
  // Color Palette
  static Color primaryColor = const Color.fromRGBO(230, 230, 230, 1);
  static Color secondaryColor = const Color.fromRGBO(255, 255, 255, 1);
  static Color accentColor = const Color.fromRGBO(255, 166, 29, 1);

  static Color topBarColor = const Color.fromRGBO(179, 179, 179, 1);
  static Color sideBarColor = const Color.fromRGBO(75, 75, 75, 1);

  // App Spacings
  static double mainBoxWidth = 0.37;
  static double mainBoxTitleHeight = 0.1;
  static double mainBoxHeight = 0.8 - mainBoxTitleHeight;

  static double topBarHeight = 1 - (mainBoxHeight + mainBoxTitleHeight);
  static double topBarWidth = 2 * mainBoxWidth;

  static double sideBarWidth = 1 - (2 * mainBoxWidth);
  static double sideBarSpacersWidth = 0.03;
  static double sideBarScrollerWidth = sideBarWidth - (2 * sideBarSpacersWidth);
}
