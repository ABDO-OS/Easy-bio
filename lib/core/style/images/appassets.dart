import 'package:flutter/widgets.dart';

import '../../constants/constants.dart';

class AppAssets {
  final bool isDark;

  AppAssets({required this.isDark});

  String logo(BuildContext context) {
    return isDark ? ImageAssets.appIconDark : ImageAssets.appIconLight;
  }

  String themeIcon(BuildContext context) {
    return isDark ? ImageAssets.iconDarkTheme : ImageAssets.iconLightTheme;
  }
}
