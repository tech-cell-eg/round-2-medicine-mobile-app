import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class BrandName extends StatelessWidget {
  const BrandName({super.key, required this.brandName});
  final String brandName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Row(
          children: [
            Text("Brand Name: ", style: AppTextStyles.style16W600),
            Text(brandName, style: AppTextStyles.style14W300),
          ],
        ),
      ],
    );
  }
}
