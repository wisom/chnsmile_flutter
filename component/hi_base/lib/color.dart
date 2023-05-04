import 'package:flutter/material.dart';

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

const MaterialColor grey = MaterialColor(
  0xFFEEEEEE,
  <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFEEEEEE),
    300: Color(0xFFE0E0E0),
    350: Color(0xFFD6D6D6), // only for raised button while pressed in light theme
    400: Color(0xFFBDBDBD),
    500: Color(0xFF9E9E9E),
    600: Color(0xFF757575),
    700: Color(0xFF616161),
    800: Color(0xFF424242),
    850: Color(0xFF303030), // only for background color in dark theme
    900: Color(0xFF212121),
  },
);

///主色调
const MaterialColor primary = MaterialColor(
  0xff00b0f0,
  <int, Color>{
    20: Color(0xff00b0f0),
    50: Color(0xff00b0f0),
  },
);

class HiColor {
  static const Color red = Color(0xFFFF4759);
  static const Color dark_red = Color(0xFFE03E4E);
  static const Color dark_bg = Color(0xFF18191A);
  static const Color common_bg = Color(0xffF7F7F7);
  static const Color common_text = Color(0xFF797979);
  static const Color dark_text = Color(0xFF18191A);
}