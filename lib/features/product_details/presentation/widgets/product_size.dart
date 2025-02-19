// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:medical_store/core/constants/app_colors.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_text_styles.dart';
import 'package:medical_store/features/product_details/data/model/product_size_model.dart';

class ProductSize extends StatefulWidget {
  const ProductSize({super.key, required this.sizes});
  final List<ProductSizeModel> sizes;
  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text("Package size", style: AppTextStyles.style16W600),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                widget.sizes.asMap().entries.map((e) {
                  int index = e.key;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color:
                            selectedIndex != index
                                ? AppColors.colorF5
                                // ignore: deprecated_member_use
                                : AppColors.colorSelected.withOpacity(0.05),
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppSizes.reduis),
                        ),
                        border: Border.all(
                          color:
                              selectedIndex == index
                                  ? AppColors.colorSelected
                                  : AppColors.colorF5,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            e.value.rs,
                            style:
                                selectedIndex != index
                                    ? AppTextStyles.style16W700
                                    : AppTextStyles.style16W700select,
                          ),
                          SizedBox(height: 5),
                          Text(
                            e.value.pellet,
                            style:
                                selectedIndex != index
                                    ? AppTextStyles.style12W400
                                    : AppTextStyles.style12W400Select,
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
