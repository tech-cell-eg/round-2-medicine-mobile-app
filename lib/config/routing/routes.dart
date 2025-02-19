enum Routes {
  onboarding,
  login,
  otp,
  home,
  category,
  productDetails,
  cart,
  checkout,
  notification,
  profile,
  navigation,
  products,
}

extension RoutesExtension on Routes {
  String get name => toString().split('.').last;
}
