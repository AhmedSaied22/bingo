import 'package:bingo/core/extensions/media_query_extensions.dart';
import 'package:bingo/core/layout/responsive.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/features/home/presentation/views/widgets/bingo_grid.dart';
import 'package:flutter/material.dart';

class AdaptiveBingoGrid extends StatelessWidget {
  final double mobileScale;
  final double tabletScale;
  final double desktopScale;
  final double minGridSize;

  const AdaptiveBingoGrid({
    super.key,
    required this.mobileScale,
    required this.tabletScale,
    required this.desktopScale,
    required this.minGridSize,
  });

  double _getScaleFactor(BuildContext context) {
    if (ResponsiveLayout.isDesktop(context)) return desktopScale;
    if (ResponsiveLayout.isTablet(context)) return tabletScale;
    return mobileScale;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scaleFactor = _getScaleFactor(context);
        final availableSize = context.screenSize.shortestSide;
        final gridSize =
            (availableSize * scaleFactor).clamp(minGridSize, double.infinity);

        return Container(
          width: gridSize,
          height: gridSize,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const BingoGrid(),
        );
      },
    );
  }
}
