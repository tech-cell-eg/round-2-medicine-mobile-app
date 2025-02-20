import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_strings.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/features/your_card/presentation/widgets/count_component.dart';

class ItemComponent extends StatelessWidget {
  const ItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    valueChanged(int value) {
      value = 0;
    }

    return Column(
      children: [
        Row(
          children: [
            CachedNetworkImage(
              imageUrl: AppStrings.productUrl,
              width: 70,
              height: 80,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "Sugar Free Gold",
                          style: AppTextStyles.style14W600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.cancel_outlined,
                        color: AppColors.color00,
                        size: 20,
                      ),
                    ],
                  ),
                  Text(
                    "bottle of 500 pellets",
                    style: AppTextStyles.style13W400,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rs. 500", style: AppTextStyles.style18W700),
                      Spacer(),
                      CountComponent(count: valueChanged),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: AppColors.dividerColor, height: 20),
      ],
    );
  }
}
