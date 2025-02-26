class ProductDetailsModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String productDetails;
  final String ingredients;
  final String expiryDate;
  final String brandName;
  final double rating;
  final double oldPrice;
  //final List<ProductSizeModel> sizes;
  final int ratingCount;
  final int reviewCount;
  final String image;
  final int subCategoryId;
  final String createdAt;
  final String updatedAt;

  ProductDetailsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.productDetails,
    required this.ingredients,
    required this.expiryDate,
    required this.brandName,
    required this.rating,
    required this.oldPrice,
    // required this.sizes,
    required this.ratingCount,
    required this.reviewCount,
    required this.image,
    required this.subCategoryId,
    required this.createdAt,
    required this.updatedAt,
  });

  /// **Factory Constructor to Parse JSON**
  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailsModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      productDetails: json['product_details'] ?? '',
      ingredients: json['ingredients'] ?? '',
      expiryDate: json['expiry_date'] ?? '',
      brandName: json['brand_name'] ?? '',
      rating: double.tryParse(json['rating'].toString()) ?? 0.0,
      oldPrice: (json['old_price'] ?? 0).toDouble(),
      // sizes:
      //     (json['sizes'] as List<dynamic>?)
      //         ?.map((e) => ProductSizeModel.fromJson(e as Map<String, dynamic>))
      //         .toList() ??
      //     [],
      ratingCount: json['rating_count'] ?? 0,
      reviewCount: json['review_count'] ?? 0,
      image: json['image'] ?? '',
      subCategoryId: json['sub_category_id'] ?? 0,
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }

  /// **Convert Model to JSON**
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'product_details': productDetails,
      'ingredients': ingredients,
      'expiry_date': expiryDate,
      'brand_name': brandName,
      'rating': rating,
      'old_price': oldPrice,
      // 'sizes': jsonEncode(
      //   sizes.map((e) => e.toJson()).toList(),
      // ), // Convert List to JSON string
      'rating_count': ratingCount,
      'review_count': reviewCount,
      'image': image,
      'sub_category_id': subCategoryId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
