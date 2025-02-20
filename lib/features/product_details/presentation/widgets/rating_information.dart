import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/features/product_details/presentation/widgets/ratings.dart';

class RatingInformation extends StatelessWidget {
  const RatingInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("4.5", style: AppTextStyles.style33W600),
                    SizedBox(width: 18),
                    Icon(Icons.star, color: AppColors.starColor, size: 26),
                  ],
                ),
                Text(
                  "455 Rating and 257 Reviews",
                  style: AppTextStyles.style14W400,
                ),
              ],
            ),
          ),
          Container(height: 100, width: 1, color: AppColors.dividerColor),
          SizedBox(width: 5),
          Expanded(flex: 3, child: Ratings()),
        ],
      ),
    );
  }
}
