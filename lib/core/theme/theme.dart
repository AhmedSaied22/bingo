import 'package:bingo/core/ui/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        brightness: Brightness.dark,
      ),
      textTheme: GoogleFonts.luckiestGuyTextTheme().copyWith(
        bodyLarge: const TextStyle(color: AppColors.textColor),
        bodyMedium: const TextStyle(color: AppColors.textColor),
        displayLarge: const TextStyle(color: AppColors.textColor),
        displayMedium: const TextStyle(color: AppColors.textColor),
        displaySmall: const TextStyle(color: AppColors.textColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.luckiestGuy(
          fontSize: 24.sp,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
