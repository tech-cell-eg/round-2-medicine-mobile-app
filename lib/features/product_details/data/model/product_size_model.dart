// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductSizeModel {
  final String rs, pellet;
  ProductSizeModel({required this.rs, required this.pellet});
  factory ProductSizeModel.fromJson(Map<String, dynamic> json) =>
      ProductSizeModel(
        rs: json['price'].toString(),
        pellet: json['size'].toString(),
      );

  Map<String, dynamic> toJson() => {'rs': rs, 'pellet': pellet};
}
