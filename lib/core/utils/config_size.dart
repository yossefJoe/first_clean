import 'package:flutter/material.dart';

class ConfigSize {
  static double? screenHeight;
  static double? screenWidth;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * .024
        : screenWidth! * .024;
  }
}

class FontSizes {
  static const double _defaultFontSize = 16.0;
  static const double _smallFontSize = 14.0;
  static const double _mediumFontSize = 18.0;
  static const double _largeFontSize = 22.0;

  double get defaultFontSize => _defaultFontSize;
  double get smallFontSize => _smallFontSize;
  double get mediumFontSize => _mediumFontSize;
  double get largeFontSize => _largeFontSize;
}
