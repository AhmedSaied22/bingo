import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:flutter/material.dart';

class BingoNumberCell extends StatelessWidget {
  final int number;
  final bool isSelected;
  final VoidCallback onTap;

  const BingoNumberCell({
    super.key,
    required this.number,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: BorderSide(
          color: AppColors.primaryColor.withValues(alpha: 0.7),
        ),
      ),
      color: isSelected
          ? AppColors.primaryColor.withValues(alpha: 0.5)
          : const Color.fromARGB(255, 46, 46, 46),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: onTap,
        child: Center(
          child: Text(
            '$number',
            style: context.bodyLarge,
          ),
        ),
      ),
    );
  }

  void _handleTap() {
    print('Tapped number: $number');
  }
}
