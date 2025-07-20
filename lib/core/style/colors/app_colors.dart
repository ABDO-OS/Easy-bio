import 'package:easy_bio/core/style/colors/colors.dart';
import 'package:flutter/material.dart';

class AppColors {
  final bool isDark;

  AppColors({required this.isDark});

  Color get primaryColor =>
      isDark ? ColorsDark.primaryColor : ColorsLight.primaryColor;

  Color get secondaryColor =>
      isDark ? ColorsDark.secondaryColor : ColorsLight.secondaryColor;

  Color get backgroundColor => isDark ? ColorsDark.black2 : ColorsLight.white;

  Color get textColor => isDark ? ColorsLight.white : ColorsLight.black;
}
