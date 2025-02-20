import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';

class RatingBar extends StatelessWidget {
  final int stars;
  final double percentage;

  const RatingBar({super.key, required this.stars, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Row(
            children: [
              Text('$stars'),
              Icon(Icons.star, color: AppColors.starColor, size: 16),
            ],
          ),
          SizedBox(width: 8),
          Expanded(
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryColor),
            ),
          ),
          SizedBox(width: 8),
          Text('${(percentage * 100).toStringAsFixed(0)}%'),
        ],
      ),
    );
  }
}
