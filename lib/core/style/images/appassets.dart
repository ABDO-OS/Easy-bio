import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../constants/constants.dart';

class AppAssets {
  static String logo(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? ImageAssets.appIconDark : ImageAssets.appIconLight;
  }

  static String themeIcon(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return isDark ? ImageAssets.iconLightTheme : ImageAssets.iconDarkTheme;
  }
}
