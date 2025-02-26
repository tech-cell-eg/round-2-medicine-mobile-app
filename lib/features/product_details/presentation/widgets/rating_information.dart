import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/features/product_details/presentation/widgets/ratings.dart';

class RatingInformation extends StatelessWidget {
  const RatingInformation({
    super.key,
    required this.rating,
    required this.ratingCount,
    required this.reviewCount,
  });
  final String rating;
  final int ratingCount, reviewCount;
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
                    Text(rating, style: AppTextStyles.style33W600),
                    SizedBox(width: 18),
                    Icon(Icons.star, color: AppColors.starColor, size: 26),
                  ],
                ),
                Text(
                  "$ratingCount Rating and $reviewCount Reviews",
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
