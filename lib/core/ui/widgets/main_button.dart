import 'package:bingo/core/extensions/media_query_extensions.dart';
import 'package:bingo/core/ui/app_styles_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.label,
    required this.color,
    this.onPressed,
    this.height,
  });

  final String label;
  final void Function()? onPressed;
  final Color color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: context.screenWidth * 0.3,
          maxWidth: context.screenWidth * 0.4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Text(label,
            style: AppFonts.text16Normal(context).copyWith(
                color: Colors.white,
                fontFamily: GoogleFonts.chewy().fontFamily)),
      ),
    );
  }
}
