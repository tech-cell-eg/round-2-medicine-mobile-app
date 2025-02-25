import 'package:flutter/material.dart';
import 'package:medical_store/core/shared/dialogs/show_animated_internet_dialog.dart';

class DialogHelper {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static bool _isDialogOpen = false;

  static Future<void> closeNoInternetDialog(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 200));

    if (_isDialogOpen &&
        navigatorKey.currentState?.canPop() == true &&
        navigatorKey.currentState != null) {
      navigatorKey.currentState?.pop();
      _isDialogOpen = false;
    }
  }

  static Future<void> showNoInternetDialog(BuildContext context) async {
    if (!_isDialogOpen && navigatorKey.currentContext != null) {
      await Future.delayed(const Duration(seconds: 2));
      _isDialogOpen = true;
      showAnimatedNoInternetDialog(
        navigatorKey.currentState?.overlay?.context ?? context,
      ).then((_) {
        _isDialogOpen = false;
      });
    }
  }
}
