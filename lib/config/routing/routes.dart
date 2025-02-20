enum Routes {
  onboarding,
  login,
  otp,
  home,
  categoryProducts,
  productDetails,
  cart,
  checkout,
  notification,
  profile,
  thanks,
}

extension RoutesExtension on Routes {
  String get name => toString().split('.').last;
}
