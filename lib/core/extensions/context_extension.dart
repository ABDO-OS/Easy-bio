import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../style/colors/app_colors.dart';

extension AppContextExtensions on BuildContext {
  AppColors get color {
    final isDark = Theme.of(this).brightness == Brightness.dark;
    return AppColors(isDark: isDark);
  }
}

extension ContextExt on BuildContext {
  //Navigation
  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
