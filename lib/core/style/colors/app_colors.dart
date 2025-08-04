import 'package:easy_bio/core/style/colors/colors.dart';
import 'package:flutter/material.dart';

class AppColorss {
  final bool isDark;

  AppColorss({required this.isDark});

  Color get primaryColor =>
      isDark ? ColorsDark.primaryColor : ColorsLight.secondaryColor;

  Color get secondaryColor =>
      isDark ? ColorsDark.secondaryColor : ColorsLight.primaryColor;

  Color get accountbottomcolor =>
      isDark ? ColorsDark.secondaryColor : ColorsDark.primaryColor;

  Color get backgroundColor => isDark ? ColorsDark.black2 : ColorsLight.white;

  Color get textColor => isDark ? ColorsLight.white : ColorsLight.black;
  Color get accountColor => isDark ? ColorsLight.black : ColorsLight.white;

  Color get infoColor =>
      isDark ? ColorsLight.white : ColorsLight.secondaryColor;

  Color get editbottom =>
      isDark ? ColorsDark.black2 : ColorsLight.secondaryColor;
}
// ColorsLight.primaryColor