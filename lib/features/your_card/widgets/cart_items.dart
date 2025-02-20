import 'package:flutter/material.dart';
import 'package:medical_store/features/your_card/widgets/item_component.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => ItemComponent(),
      itemCount: 5,
    );
  }
}
