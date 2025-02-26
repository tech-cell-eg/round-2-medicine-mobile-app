import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:medical_store/core/constants/end_points.dart';
import 'package:medical_store/features/product_details/data/model/product_details_model.dart';

class ProductDetailesSer {
  http.Client? client;
  ProductDetailesSer() {
    client = http.Client();
  }

  Future<ProductDetailsModel> getProductDetails(int id) async {
    final response = await client!.get(
      Uri.parse("${EndPoints.baseUrl}${EndPoints.products}/$id"),
    );
    return ProductDetailsModel.fromJson(jsonDecode(response.body)['data']);
  }
}
