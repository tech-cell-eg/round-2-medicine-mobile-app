import 'package:flutter/material.dart';
import 'package:medical_store/features/home/presentation/widgets/products/product_card.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14.0,
        crossAxisSpacing: 12.0,
        childAspectRatio: 159 / 265,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => const ProductCard(),
    );
  }
}
