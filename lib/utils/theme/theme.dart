import 'package:e_commerce_english/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_english/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce_english/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce_english/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_english/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_commerce_english/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce_english/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/app_bar_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      chipTheme: TChipTheme.lightChipTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.blue,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      chipTheme: TChipTheme.darkChipTheme);
}
