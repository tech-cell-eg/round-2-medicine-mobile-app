import 'package:flutter/material.dart';
import 'package:medical_store/features/product_details/widgets/product_details_appbar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductDetailsAppbar(),
    );
  }
}
