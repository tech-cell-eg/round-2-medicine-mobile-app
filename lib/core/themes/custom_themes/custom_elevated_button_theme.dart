import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

abstract class CustomElevatedButtonTheme {
  const CustomElevatedButtonTheme._();

  static final ElevatedButtonThemeData lightElevetedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primaryColor,
      side: const BorderSide(color: Colors.transparent),
      padding: const EdgeInsets.symmetric(vertical: 16.0), 
      textStyle: AppTextStyles.elevatedButtonTextStyle,
      minimumSize: const Size(117, 43),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(56.0),
      ),
    ),
  );

  static final ElevatedButtonThemeData darkElevetedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.primaryColor,
      side: const BorderSide(color: Colors.transparent),
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      textStyle: AppTextStyles.elevatedButtonTextStyle,
      minimumSize: const Size(117, 43),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(56.0),
      ),
    ),
  );
}
