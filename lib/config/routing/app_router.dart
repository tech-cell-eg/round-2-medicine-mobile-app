import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medical_store/config/routing/routes.dart';
import 'package:medical_store/features/category/presentation/screens/category_screen.dart';
import 'package:medical_store/features/home/presentation/screens/home_screen.dart';
import 'package:medical_store/features/login/presentation/screens/login_screen.dart';
import 'package:medical_store/features/login/presentation/screens/otp_screen.dart';
import 'package:medical_store/features/navigation/navigation_screen.dart';
import 'package:medical_store/features/onboarding/onboarding_screen.dart';
import 'package:medical_store/features/products/presentation/screens/products_screen.dart';
import 'package:medical_store/features/profile/presentation/screens/profile_screen.dart';
import 'package:medical_store/features/notification/notification_page.dart';
import 'package:medical_store/features/onboarding/onboarding_screen.dart';
import 'package:medical_store/features/product_details/presentation/product_details_page.dart';
import 'package:medical_store/features/your_card/presentation/pages/cart_page.dart';
import 'package:medical_store/features/your_card/presentation/pages/checkout_page.dart';
import 'package:medical_store/features/your_card/presentation/pages/thanks_page.dart';

class AppRouter {
  static final Map<String, Widget Function(BuildContext)> _routes = {
    Routes.onboarding.name: (_) => const OnboardingScreen(),
    Routes.login.name: (_) => const LoginScreen(),
    Routes.otp.name: (_) => const OtpScreen(),

    Routes.home.name: (_) => const HomeScreen(),
    Routes.category.name: (_) => const CategoryScreen(),
    Routes.productDetails.name: (_) => const Placeholder(),
    Routes.cart.name: (_) => const Placeholder(),
    Routes.checkout.name: (_) => const Placeholder(),
    Routes.notification.name: (_) => const Placeholder(),
    Routes.profile.name: (_) => const ProfileScreen(),
    Routes.navigation.name: (_) => const NavigationScreen(),
    Routes.products.name: (_) => const ProductsScreen(),

    // Routes.home.name: (_) => const HomeScreen(),
    Routes.categoryProducts.name: (_) => const Placeholder(),
    Routes.productDetails.name: (_) => const ProductDetailsPage(),
    Routes.cart.name: (_) => const CartPage(),
    Routes.checkout.name: (_) => const CheckoutPage(),
    Routes.notification.name: (_) => const NotificationPage(),

    Routes.profile.name: (_) => const Placeholder(),
    Routes.thanks.name: (_) => const ThanksPage(),
  };

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
    final pageBuilder = _routes[settings.name];

    if (pageBuilder != null) {
      return isIOS
          ? CupertinoPageRoute(builder: pageBuilder)
          : MaterialPageRoute(builder: pageBuilder);
    }
    return null;
  }
}
