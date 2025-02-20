import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/generated/app_images.dart';
import 'package:medical_store/core/utils/helpers/spacing.dart';

class SubCategoryCard extends StatelessWidget {
  const SubCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.only(
          top: 1,
          bottom: AppSizes.md,
          right: 1,
          left: 1,
        ),
        decoration: _buildDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: 110,
                height: 90,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 234, 236),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Image.asset(AppImages.productImage, fit: BoxFit.cover),
              ),
            ),
            verticalSpace(AppSizes.md),
            SizedBox(
              width: 90,
              child: Center(
                child: Text(
                  'Dental',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.subTitleColor,
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
      color: Color(0xFFF5F7FA),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color(0xFFE9E9EE),
          offset: const Offset(0, 2),
          blurRadius: 4,
        ),
      ],
    );
  }
}
