import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart'
    show AppTextStyles;
import 'package:medical_store/core/utils/helpers/spacing.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(70),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: _buildDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                width: 85,
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            verticalSpace(12.0),
            SizedBox(
              width: 80,
              child: Center(
                child: Text(
                  'Dental',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.style14W400.copyWith(
                    color: AppColors.textColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(70.0),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFFe9e9ee),
          spreadRadius: 3, //2
          blurRadius: 7, //7
          offset: const Offset(3, 1),
        ),
      ],
    );
  }
}
