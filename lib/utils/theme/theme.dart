import 'package:flutter/material.dart';
import 'custom_themes/text_theme.dart';
// import 'custom_themes/text_field_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/check_box_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/appbar_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppings',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );

  static ThemeData darktTheme = ThemeData(
    fontFamily: 'Poppings',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    checkboxTheme: TCheckBoxTheme.darightCheckBoxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    appBarTheme: TAppbarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    // inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
  );
}
