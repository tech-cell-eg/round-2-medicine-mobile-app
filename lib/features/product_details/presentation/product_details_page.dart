import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_store/core/widgets/custom_button.dart';
import 'package:medical_store/features/product_details/data/repository/product_details_repo.dart';
import 'package:medical_store/features/product_details/data/service/product_detailes_ser.dart';
import 'package:medical_store/features/product_details/presentation/cubit/product_details_cubit.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_details_appbar.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_details_body.dart';
import 'package:medical_store/features/your_card/presentation/pages/cart_page.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductDetailsAppbar(),
      body: BlocProvider(
        create:
            (context) =>
                ProductDetailsCubit(ProductDetailsRepo(ProductDetailesSer()))
                  ..getProductDetails(1),
        child: ProductDetailsBody(),
      ),
      bottomNavigationBar: CustomButton(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartPage()),
          );
        },
        title: "Add to Cart",
      ),
    );
  }
}
