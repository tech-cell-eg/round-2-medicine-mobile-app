import 'package:medical_store/features/product_details/data/model/comment_model.dart';
import 'package:medical_store/features/product_details/data/model/product_size_model.dart';

class ProductDetailsModel {
  ProductDetailsModel({
    required this.productDetails,
    required this.ingredients,
    required this.productOldPrice,
    required this.productRating,
    required this.productSize,
    required this.productSubTitle,
    required this.commentModel,
    required this.productName,
    required this.productImage,
    required this.productPrice,
  });
  final String productName;
  final String productSubTitle;
  final List<String> productImage;
  final String productOldPrice;
  final String productPrice;
  final String productDetails;
  final String ingredients;
  final List<ProductSizeModel> productSize;
  final String productRating;
  final CommentModel commentModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        productName: json["product_name"],
        productSubTitle: json["product_sub_title"],
        productImage: List<String>.from(json["product_image"].map((x) => x)),
        productOldPrice: json["product_old_price"],
        productPrice: json["product_price"],
        productDetails: json["product_details"],
        ingredients: json["ingredients"],
        productSize: List<ProductSizeModel>.from(
          json["product_size"].map((x) => ProductSizeModel.fromJson(x)),
        ),
        productRating: json["product_rating"],
        commentModel: CommentModel.fromJson(json["comment_model"]),
      );
}
