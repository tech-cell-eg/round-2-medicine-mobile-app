import 'package:flutter/material.dart';
import 'package:medical_store/core/widgets/custom_button.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_details_appbar.dart';
import 'package:medical_store/features/product_details/presentation/widgets/product_details_body.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductDetailsAppbar(),
      body: ProductDetailsBody(),
      bottomNavigationBar: CustomButton(onTap: () {}, title: "Add to Cart"),
    );
  }
}
