import 'package:flutter/material.dart';
import 'package:medical_store/features/product_details/presentation/widgets/rating_bar.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<int, double> ratingDistribution = {
      5: 0.67,
      4: 0.20,
      3: 0.07,
      2: 0.00,
      1: 0.02,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          ratingDistribution.entries.map((entry) {
            return RatingBar(stars: entry.key, percentage: entry.value);
          }).toList(),
    );
  }
}
