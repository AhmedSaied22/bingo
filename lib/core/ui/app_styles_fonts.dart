import 'package:bingo/core/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  // Font Families
  static const String primaryFont = 'Righteous';
  static const String secondaryFont = 'Chewy';

  // Configuration
  static const double _baseScreenWidth = 1440;
  static const double _minScaleFactor = 0.9;
  static const double _maxScaleFactor = 1.25;

  static const FontWeights weights = FontWeights();
  static const FontSizes sizes = FontSizes();

  static TextStyle style({
    required BuildContext context,
    required double size,
    required FontWeight weight,
    Color color = AppColors.textColor,
    double letterSpacing = 0,
    String fontFamily = primaryFont, // Default to primary font
  }) {
    return GoogleFonts.getFont(
      fontFamily,
      fontSize: _responsiveSize(context, size),
      fontWeight: weight,
      color: color,
      letterSpacing: letterSpacing,
    );
  }

  static double _responsiveSize(BuildContext context, double baseSize) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (baseSize.sp * (screenWidth / _baseScreenWidth))
        .clamp(baseSize * _minScaleFactor, baseSize * _maxScaleFactor);
  }
}

class FontWeights {
  const FontWeights();

  final FontWeight light = FontWeight.w300;
  final FontWeight normal = FontWeight.w500;
  final FontWeight semiBold = FontWeight.w600;
  final FontWeight bold = FontWeight.w700;
}

class FontSizes {
  const FontSizes();

  final double s11 = 11;
  final double s12 = 12;
  final double s14 = 14;
  final double s16 = 16;
  final double s18 = 18;
  final double s20 = 20;
  final double s24 = 24;
  final double s28 = 28;
  final double s32 = 32;
  final double s36 = 36;
}
