// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductSizeModel {
  final String rs, pellet;
  ProductSizeModel({required this.rs, required this.pellet});
  factory ProductSizeModel.fromJson(Map<String, dynamic> json) =>
      ProductSizeModel(rs: json['rs'], pellet: json['pellet']);
}
