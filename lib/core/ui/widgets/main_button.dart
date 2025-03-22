import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/core/extensions/media_query_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.label,
    required this.color,
    this.onPressed,
    this.minHeight,
    this.maxHeight,
  });

  final String label;
  final void Function()? onPressed;
  final Color color;
  final double? minHeight;
  final double? maxHeight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: context.screenWidth * 0.32,
          maxWidth: context.screenWidth * 0.4,
          minHeight: minHeight ?? 50.h,
          maxHeight: maxHeight ?? 70.h),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Text(label, style: context.buttonText),
      ),
    );
  }
}
