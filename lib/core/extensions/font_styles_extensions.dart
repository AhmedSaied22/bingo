import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/core/ui/app_styles_fonts.dart';
import 'package:flutter/material.dart';

extension FontExtensions on BuildContext {
  TextStyle textStyle({
    double size = 14,
    FontWeight weight = FontWeight.w500,
    Color color = AppColors.textColor,
    double letterSpacing = 0,
    String fontFamily = AppFonts.primaryFont, // Default to primary
  }) {
    return AppFonts.style(
      context: this,
      size: size,
      weight: weight,
      color: color,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
    );
  }

  // Existing styles
  TextStyle get caption => textStyle(
        size: AppFonts.sizes.s12,
        weight: AppFonts.weights.light,
      );

  TextStyle get headingLarge => textStyle(
        size: AppFonts.sizes.s36,
        weight: AppFonts.weights.bold,
        letterSpacing: 1.3,
      );

  TextStyle get buttonText => textStyle(
        size: AppFonts.sizes.s16,
        weight: AppFonts.weights.normal,
        fontFamily: AppFonts.secondaryFont,
        letterSpacing: 1.5,
      );
}
