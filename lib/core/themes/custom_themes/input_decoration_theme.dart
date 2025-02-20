import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class CustomInputDecorationTheme {
  CustomInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0,vertical: 15.0),
    labelStyle: AppTextStyles.inputDecorationTextStyle,
    hintStyle: AppTextStyles.inputDecorationTextStyle,
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: AppTextStyles.inputDecorationTextStyle,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: AppColors.black),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: AppColors.black),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: AppColors.black),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 2, color: Colors.green),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 1,
    isDense: true,
    contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 16.0,vertical: 15.0),
    labelStyle: AppTextStyles.inputDecorationTextStyle,
    hintStyle: AppTextStyles.inputDecorationTextStyle,
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: AppTextStyles.inputDecorationTextStyle,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: AppColors.black),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: AppColors.black),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: AppColors.black),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.textFieldRaduis),
      borderSide: const BorderSide(width: 2, color: Colors.green),
    ),
  );
}
