import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/features/your_card/presentation/widgets/cart_items.dart';
import 'package:medical_store/features/your_card/presentation/widgets/payment_summary.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Row(
              children: [
                Text("2 item in cart", style: AppTextStyles.style14W400),
                Spacer(),
                Icon(Icons.add, color: AppColors.primaryColor),
                SizedBox(width: 10),
                Text("Add more", style: AppTextStyles.style14W400brime),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(flex: 5, child: CardItems()),
          Expanded(flex: 3, child: PaymentSummary()),
        ],
      ),
    );
  }
}
