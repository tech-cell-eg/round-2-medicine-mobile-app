import 'package:flutter/material.dart';

/// --Automatically dismiss keyboard--
class KeyboardDismissObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _dismissKeyboard();
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _dismissKeyboard();
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _dismissKeyboard();
    super.didPop(route, previousRoute);
  }

  // Handle keyboard dismissal when user starts a gesture (like swipe back)
  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    super.didStartUserGesture(route, previousRoute);
    _dismissKeyboard();
  }

  /// Ensure keyboard is dismissed only if there is an active focus
  void _dismissKeyboard() {
    final focusNode = FocusManager.instance.primaryFocus;
    if (focusNode?.hasFocus ?? false) {
      focusNode?.unfocus();
    }
  }
}
