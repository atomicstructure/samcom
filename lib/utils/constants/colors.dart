import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App Basic
  static const Color primary = Color(0xff4b68ff);
  static const Color secondary = Color(0xffffe24b);
  static const Color accent = Colors.grey;

  // Gradient Colours

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ],);
  static const Color gradientEnd = Color(0xff4b68ff);

  // Text Colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Colors.grey;
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xfff6f6f6);
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);

  // Background Container Colors
  static const Color lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = TColors.textWhite.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Colors.blue;
  static const Color buttonSecondary = Colors.grey;
  static const Color buttonDisabled = Colors.white;

  // Border Colors
  static const Color borderPrimary = Colors.white;
  static const Color borderSecondary = Colors.white;

  // Error and Validation Colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.yellow;
  static const Color info = Colors.blue;

  // Neutral Shades
  static const Color black = Colors.black;
  static const Color darkerGrey = Color(0xFF3D3D3D);
  static const Color darkGrey = Color(0xFF757575);
  static const Color grey = Colors.grey;
  static const Color sofGrey = Color(0xFF686161);
  static const Color lightGrey = Color(0xFFB8B7B7);
  static const Color white = Colors.white;
}
