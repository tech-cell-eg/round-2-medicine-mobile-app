import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/themes/custom_themes/app_bar_theme.dart';
import 'package:medical_store/core/themes/custom_themes/custom_elevated_button_theme.dart';
import 'package:medical_store/core/themes/custom_themes/input_decoration_theme.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: Color(0XFFFFFFFF),
    inputDecorationTheme: CustomInputDecorationTheme.lightInputDecorationTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevetedButtonTheme,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.nextButtonStyle,
        foregroundColor: AppColors.textButtonColor,
        overlayColor: AppColors.subTitleColor,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Color(0XFF000000),
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: CustomInputDecorationTheme.darkInputDecorationTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevetedButtonTheme,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyles.nextButtonStyle,
        foregroundColor: AppColors.textButtonColor,
        overlayColor: AppColors.subTitleColor,
      ),
    ),
  );
}
