import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void push(String routeName) {
    Navigator.pushNamed(this, routeName);
  }

  void pushReplacement(String routeName) {
    Navigator.pushReplacementNamed(this, routeName);
  }

  void pushAndRemoveAll(String routeName) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }

  void pop() => Navigator.pop(this);
}
