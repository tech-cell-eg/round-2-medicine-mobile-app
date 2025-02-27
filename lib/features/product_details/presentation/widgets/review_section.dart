import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/features/product_details/data/model/comment_model.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key, required this.commentModel});
  final CommentModel commentModel;
  @override
  Widget build(BuildContext context) {
    //formate date
    DateTime dateTime = DateTime.parse(commentModel.date);
    final DateFormat formatter = DateFormat('dd-MMM-yyyy', 'en_US');
    String formattedDate = formatter.format(dateTime);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            Icon(Icons.star, color: AppColors.starColor, size: 16),
            Text(commentModel.rating, style: AppTextStyles.style14W400),
            Spacer(),
            Text(formattedDate, style: AppTextStyles.style14W400),
          ],
        ),
        Text(commentModel.name, style: AppTextStyles.style14W400B),
        SizedBox(height: 8),
        Text(commentModel.comment, style: AppTextStyles.style14W400),
      ],
    );
  }
}
