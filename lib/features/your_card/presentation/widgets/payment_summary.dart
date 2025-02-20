import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 8),
        Text("Payment Summary", style: AppTextStyles.style16W600),
        Row(
          children: [
            Text("order total", style: AppTextStyles.style14W400),
            const Spacer(),
            Text("500", style: AppTextStyles.style14W400),
          ],
        ),
        Row(
          children: [
            Text("item discount", style: AppTextStyles.style14W400),
            const Spacer(),
            Text("-20", style: AppTextStyles.style14W400),
          ],
        ),
        Row(
          children: [
            Text("Coupon discount", style: AppTextStyles.style14W400),
            const Spacer(),
            Text("-15", style: AppTextStyles.style14W400),
          ],
        ),
        Row(
          children: [
            Text("shipping", style: AppTextStyles.style14W400),
            const Spacer(),
            Text("free", style: AppTextStyles.style14W400),
          ],
        ),
        Divider(),
        Row(
          children: [
            Text("Total", style: AppTextStyles.style14W600),
            const Spacer(),
            Text("Rs.485", style: AppTextStyles.style14W600),
          ],
        ),
      ],
    );
  }
}
