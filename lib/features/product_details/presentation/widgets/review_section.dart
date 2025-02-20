import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_strings.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            Icon(Icons.star, color: AppColors.starColor, size: 16),
            Text("4.5", style: AppTextStyles.style14W400),
            Spacer(),
            Text("05- oct 2020", style: AppTextStyles.style14W400),
          ],
        ),
        Text("Erric Hoffman", style: AppTextStyles.style14W400B),
        SizedBox(height: 8),
        Text(AppStrings.comment, style: AppTextStyles.style14W400),
      ],
    );
  }
}
