import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/core/constants/app_sizes.dart';
import 'package:medical_store/core/constants/app_strings.dart';
import 'package:medical_store/features/product_details/data/model/product_size_model.dart';
import 'package:medical_store/features/product_details/presentation/cubit/product_details_cubit.dart';
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
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: AppSizes.screenPadding,
      ),
      child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          if (state is ProductDetailsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductDetailsLoaded) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitle(
                    subTitle: state.productDetailsModel.description,
                    title: state.productDetailsModel.name,
                  ),
                  ProductImages(
                    images: [
                      state.productDetailsModel.image,
                      state.productDetailsModel.image,
                    ],
                  ),
                  SizedBox(height: 22),
                  OfferComponent(
                    preRs: state.productDetailsModel.oldPrice.toString(),
                    postRs: state.productDetailsModel.price.toString(),
                  ),
                  SizedBox(height: 18),
                  Divider(),
                  ProductSize(sizes: sizes),
                  ProductInformation(
                    information: state.productDetailsModel.productDetails,
                  ),
                  ProductIngredients(
                    information: state.productDetailsModel.ingredients,
                  ),
                  ExpireDate(expireDate: state.productDetailsModel.expiryDate),
                  BrandName(brandName: state.productDetailsModel.brandName),
                  RatingInformation(
                    rating: state.productDetailsModel.rating.toString(),
                    ratingCount: state.productDetailsModel.ratingCount,
                    reviewCount: state.productDetailsModel.reviewCount,
                  ),
                  ReviewSection(),
                ],
              ),
            );
          } else {
            return const Center(child: Text("Something went wrong"));
          }
        },
      ),
    );
  }
}
