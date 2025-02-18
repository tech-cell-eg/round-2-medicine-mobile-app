import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const appBarTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textColor,
  );

  static const elevatedButtonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static const onboardingTitleStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.textColor,
  );

  static const onboardingSubTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.subTitleColor,
  );
  static const nextButtonStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textButtonColor,
  );
  static const moreTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Color(0xFF006AFF),
  );
  static const style26W700 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static const style16W300 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.subTitleColor,
  );

  static const inputDecorationTextStyle = TextStyle(
    color: AppColors.subTitleColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const style14W400 = TextStyle(
    color: AppColors.subTitleColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const style16W400 = TextStyle(
    color: AppColors.subTitleColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const style18W600 = TextStyle(
    color: AppColors.textColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const style13W500 = TextStyle(
    color: AppColors.textColor,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
}
