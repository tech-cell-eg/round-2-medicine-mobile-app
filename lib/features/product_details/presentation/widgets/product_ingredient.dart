import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class ProductIngredients extends StatelessWidget {
  const ProductIngredients({super.key, required this.information});
  final String information;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text("Ingredients", style: AppTextStyles.style16W600),
        SizedBox(height: 8),

        Text(information, style: AppTextStyles.style14W300),

        // Text(information)
      ],
    );
  }
}
