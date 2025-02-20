import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.style22W700,
        ),
        SizedBox(height: 4),
        Text(subTitle, style: AppTextStyles.style14W400),
      ],
    );
  }
}
