import 'package:dartz/dartz.dart';

import 'package:medical_store/core/errors/failures.dart';
import 'package:medical_store/features/product_details/data/model/product_details_model.dart';
import 'package:medical_store/features/product_details/data/service/product_detailes_ser.dart';

class ProductDetailsRepo {
  ProductDetailsRepo(this.productDetailesSer);
  final ProductDetailesSer productDetailesSer;

  Future<Either<Failure, ProductDetailsModel>> getProductDetails(int id) async {
    try {
      return Right(await productDetailesSer.getProductDetails(id));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
