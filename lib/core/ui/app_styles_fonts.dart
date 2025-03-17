import 'package:bingo/core/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static final String fontFamily =
      GoogleFonts.righteous().fontFamily ?? 'DefaultFont';

  // Font weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight normal = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Helper method to calculate responsive font size
  static double _getResponsiveFontSize(BuildContext context, double baseSize) {
    final screenWidth = MediaQuery.of(context).size.width;
    final baseFontSize = baseSize.sp;

    final responsiveSize = (baseFontSize * (screenWidth / 1440))
        .clamp(baseSize * 0.9, baseSize * 1.25);

    return responsiveSize;
  }

  static TextStyle _getTextStyle(
    BuildContext context,
    double baseSize,
    FontWeight weight,
  ) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: _getResponsiveFontSize(context, baseSize),
      fontWeight: weight,
      color: AppColors.textColor,
    );
  }

  static TextStyle text11Light(BuildContext context) =>
      _getTextStyle(context, 11, light);
  static TextStyle text11Normal(BuildContext context) =>
      _getTextStyle(context, 11, normal);
  static TextStyle text11SemiBold(BuildContext context) =>
      _getTextStyle(context, 11, semiBold);
  static TextStyle text11Bold(BuildContext context) =>
      _getTextStyle(context, 11, bold);

  // Font size 12
  static TextStyle text12Light(BuildContext context) =>
      _getTextStyle(context, 12, light);
  static TextStyle text12Normal(BuildContext context) =>
      _getTextStyle(context, 12, normal);
  static TextStyle text12SemiBold(BuildContext context) =>
      _getTextStyle(context, 12, semiBold);
  static TextStyle text12Bold(BuildContext context) =>
      _getTextStyle(context, 12, bold);

  // Font size 14
  static TextStyle text14Light(BuildContext context) =>
      _getTextStyle(context, 14, light);
  static TextStyle text14Normal(BuildContext context) =>
      _getTextStyle(context, 14, normal);
  static TextStyle text14SemiBold(BuildContext context) =>
      _getTextStyle(context, 14, semiBold);
  static TextStyle text14Bold(BuildContext context) =>
      _getTextStyle(context, 14, bold);

  // Font size 16
  static TextStyle text16Light(BuildContext context) =>
      _getTextStyle(context, 16, light);
  static TextStyle text16Normal(BuildContext context) =>
      _getTextStyle(context, 16, normal);
  static TextStyle text16SemiBold(BuildContext context) =>
      _getTextStyle(context, 16, semiBold);
  static TextStyle text16Bold(BuildContext context) =>
      _getTextStyle(context, 16, bold);

  // Font size 18
  static TextStyle text18SemiBold(BuildContext context) =>
      _getTextStyle(context, 18, semiBold);

  // Font size 20
  static TextStyle text20Light(BuildContext context) =>
      _getTextStyle(context, 20, light);
  static TextStyle text20Normal(BuildContext context) =>
      _getTextStyle(context, 20, normal);
  static TextStyle text20SemiBold(BuildContext context) =>
      _getTextStyle(context, 20, semiBold);
  static TextStyle text20Bold(BuildContext context) =>
      _getTextStyle(context, 20, bold);

  // Font size 24
  static TextStyle text24Light(BuildContext context) =>
      _getTextStyle(context, 24, light);
  static TextStyle text24Normal(BuildContext context) =>
      _getTextStyle(context, 24, normal);
  static TextStyle text24SemiBold(BuildContext context) =>
      _getTextStyle(context, 24, semiBold);
  static TextStyle text24Bold(BuildContext context) =>
      _getTextStyle(context, 24, bold);
  // Font SIZE 28
  static TextStyle text28Light(BuildContext context) =>
      _getTextStyle(context, 28, light);
  static TextStyle text28Normal(BuildContext context) =>
      _getTextStyle(context, 28, normal);
  static TextStyle text28SemiBold(BuildContext context) =>
      _getTextStyle(context, 28, semiBold);
  static TextStyle text28Bold(BuildContext context) =>
      _getTextStyle(context, 28, bold);
// FONT SIZE 32
  static TextStyle text32Light(BuildContext context) =>
      _getTextStyle(context, 32, light);
  static TextStyle text32Normal(BuildContext context) =>
      _getTextStyle(context, 32, normal);
  static TextStyle text32SemiBold(BuildContext context) =>
      _getTextStyle(context, 32, semiBold);
  static TextStyle text32Bold(BuildContext context) =>
      _getTextStyle(context, 32, bold);

  // FONT SIZE 36
  static TextStyle text36Light(BuildContext context) =>
      _getTextStyle(context, 36, light);
  static TextStyle text36Normal(BuildContext context) =>
      _getTextStyle(context, 36, normal);
  static TextStyle text36SemiBold(BuildContext context) =>
      _getTextStyle(context, 36, semiBold);
  static TextStyle text36Bold(BuildContext context) =>
      _getTextStyle(context, 36, bold);
}
