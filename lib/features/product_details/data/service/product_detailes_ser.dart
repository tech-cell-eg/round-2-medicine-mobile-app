import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:medical_store/core/constants/end_points.dart';
import 'package:medical_store/features/product_details/data/model/product_details_model.dart';

class ProductDetailesSer {
  Dio? dio;

  ProductDetailesSer() {
    dio = Dio(
      BaseOptions(baseUrl: EndPoints.baseUrl, responseType: ResponseType.json),
    );
  }

  Future<ProductDetailsModel> getProductDetails(int id) async {
    final response = await dio!.get("${EndPoints.products}/$id");
    dynamic data = response.data;
    data = jsonDecode(data);
    return ProductDetailsModel.fromJson(data['data'] as Map<String, dynamic>);
  }
}
