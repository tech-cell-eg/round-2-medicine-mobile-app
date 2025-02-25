import 'package:dio/dio.dart';
import 'package:medical_store/features/product_details/data/model/product_details_model.dart';

class ProductDetailesSer {
  Dio? dio;
  ProductDetailesSer() {
    dio = Dio();
  }

  Future<ProductDetailsModel> getProductDetails() async {
    final response = await dio!.get('https://fakestoreapi.com/products/1');
    return ProductDetailsModel.fromJson(response.data);
  }
}
