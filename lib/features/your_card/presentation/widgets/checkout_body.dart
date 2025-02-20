import 'package:flutter/material.dart';
import 'package:medical_store/features/your_card/presentation/widgets/delivery_address.dart';
import 'package:medical_store/features/your_card/presentation/widgets/itemInformation.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [itemsInformation(), DeliveryAddress()]),
    );
  }
}
