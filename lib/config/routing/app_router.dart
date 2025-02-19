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
import 'package:medical_store/features/profile/presentation/screens/profile_screen.dart';

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
