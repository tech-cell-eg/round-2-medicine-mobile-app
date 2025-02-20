import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_strings.dart';
import 'package:medical_store/features/product_details/data/model/product_size_model.dart';
import 'package:medical_store/features/product_details/presentation/widgets/brand_name.dart';
import 'package:medical_store/features/product_details/presentation/widgets/expire_date.dart';
import 'package:medical_store/features/product_details/presentation/widgets/offer_component.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_images.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_information.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_ingredient.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_size.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_title.dart';
import 'package:medical_store/features/product_details/presentation/widgets/rating_information.dart';
import 'package:medical_store/features/product_details/presentation/widgets/review_section.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductSizeModel> sizes = [
      ProductSizeModel(rs: "Rs.106", pellet: "500 pellets"),
      ProductSizeModel(rs: "Rs.106", pellet: "500 pellets"),
      ProductSizeModel(rs: "Rs.106", pellet: "500 pellets"),
      ProductSizeModel(rs: "Rs.106", pellet: "500 pellets"),
    ];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductTitle(
              subTitle: "Etiam mollis metus non purus ",
              title: "Sugar Free Gold Low Calories",
            ),
            ProductImages(
              images: [
                AppStrings.productUrl,
                AppStrings.productUrl,
                AppStrings.productUrl,
              ],
            ),
            SizedBox(height: 22),
            OfferComponent(preRs: "Rs.99", postRs: "Rs.56"),
            SizedBox(height: 18),
            Divider(),
            ProductSize(sizes: sizes),
            ProductInformation(information: AppStrings.productInformation),
            ProductIngredients(information: AppStrings.productIngredients),
            ExpireDate(),
            BrandName(),
            RatingInformation(),
            ReviewSection(),
          ],
        ),
      ),
    );
  }
}
