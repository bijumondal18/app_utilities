import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF111111);
  static const secondary = Color(0xFF088DB4);
  static const white = Color(0xFFFFFFFF);
  static const scaffold = Color(0xFFFFFFFF);
  static const black = Color(0xFF111111);
  static const darkGrey = Color(0xFF212121);
  static const lightGrey = Color(0xFFF0F0F0);
  static const subTitleText = Color(0xFF455A64);
  static const grey = Color(0xFF989696);
  static const border = Color(0xFFE5E5E5);
  static const shadow = Color(0xFFEAEAEA);
  static const transparent = Color(0x00FFFFFF);

  static const orange = Color(0xFFFC8B36);
  static const yellow = Color(0xFFFCF236);
  static const blue = Color(0xFF3646FC);
  static const red = Color(0xFFFF4E4E);
  static const teal = Color(0xFF1BC1F3);
  static const silver = Color(0xFFC0C0C0);
  static const violet = Color(0xFF7173FE);

  static const green = Color(0xFF5D993D);
  static const warning = Color(0xFFFAA61A);
  static const gradientStart = Color(0xFF9C2CF3);
  static const gradientEnd = Color(0xFF3A49F9);

  static const creditCardGradient =
      LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.gradientStart, AppColors.gradientEnd]);

  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}
