import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class ExpireDate extends StatelessWidget {
  const ExpireDate({super.key, required this.expireDate});
  final String expireDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Row(
          children: [
            Text("Expire Date: ", style: AppTextStyles.style16W600),
            Text(expireDate, style: AppTextStyles.style14W300),
          ],
        ),
      ],
    );
  }
}
