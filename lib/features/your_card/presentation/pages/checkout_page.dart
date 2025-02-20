import 'package:flutter/material.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/core/utils/helpers/extensions/navigation_extension.dart';
import 'package:medical_store/core/widgets/custom_button.dart';
import 'package:medical_store/features/your_card/presentation/widgets/checkout_body.dart';
import 'package:medical_store/features/your_card/presentation/widgets/custom_appbar.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Checkout"),
      body: CheckoutBody(),
      bottomNavigationBar: CustomButton(
        onTap: () {
          context.push(Routes.thanks.name);
        },
        title: "Pay Now",
      ),
    );
  }
}
