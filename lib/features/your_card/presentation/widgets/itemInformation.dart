import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class itemsInformation extends StatelessWidget {
  const itemsInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("2 item in cart", style: AppTextStyles.style14W400),
        Spacer(),
        Column(
          children: [
            Text("total", style: AppTextStyles.style14W400),
            Text("Rs.500.00", style: AppTextStyles.style16W600),
          ],
        ),
      ],
    );
  }
}
