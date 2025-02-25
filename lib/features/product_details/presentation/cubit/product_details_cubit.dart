import 'package:bloc/bloc.dart';
import 'package:medical_store/features/product_details/data/model/product_details_model.dart';
import 'package:medical_store/features/product_details/data/repository/product_details_repo.dart';
import 'package:meta/meta.dart';

part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit(this.productDetailesRepo)
    : super(ProductDetailsInitial());
  final ProductDetailsRepo productDetailesRepo;
  Future<void> getProductDetails() async {
    emit(ProductDetailsLoading());

    final response = await productDetailesRepo.getProductDetails();
    response.fold(
      (l) => emit(ProductDetailsError(l.errMessage)),
      (r) => emit(ProductDetailsLoaded(r)),
    );
  }
}
