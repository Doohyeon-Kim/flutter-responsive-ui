import 'package:flutter/material.dart';
import 'package:folivora_design_system/folivora_design_system.dart';

TextStyle titleTextStyle = TextStyle(color: FvLightTheme.themeData.colorScheme.onPrimary);

class CustomTypography {
  CustomTypography._();

  static final TextStyle h1 = FvTypography.title1.copyWith(color: FvLightTheme.themeData.colorScheme.onPrimary);
  static final TextStyle h2 = FvTypography.title3.copyWith(color: FvLightTheme.themeData.colorScheme.onPrimary);
  static final TextStyle h3 = FvTypography.body.copyWith(color: FvLightTheme.themeData.colorScheme.onPrimary);
}
