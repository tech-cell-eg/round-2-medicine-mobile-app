import 'package:flutter/material.dart';
import 'package:medical_store/features/home/presentation/widgets/products/product_card.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 18.0,
        crossAxisSpacing: 12.0,
        childAspectRatio: 159 / 265,
      ),
      itemCount: 4,
      itemBuilder: (context, index) => const ProductCard(),
    );
  }
}
