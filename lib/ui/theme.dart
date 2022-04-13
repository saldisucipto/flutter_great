import 'package:flutter/material.dart';

// Menmabhkan Color Palette
const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Tema {
  static final light = ThemeData(
    // disini untuk mengatur tampilan pada aplikasi kita atau mengatur tema pada aplikasi kita
    primaryColor: primaryClr,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    // disini material color untuk dark theme
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
