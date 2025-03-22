import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/core/extensions/media_query_extensions.dart';
import 'package:bingo/core/layout/responsive.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:flutter/material.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: _AdaptiveBingoGrid(
            mobileScale: 0.8,
            tabletScale: 0.6,
            desktopScale: 0.4,
            minGridSize: 300,
          ),
        ),
      ),
    );
  }
}

class _AdaptiveBingoGrid extends StatelessWidget {
  final double mobileScale;
  final double tabletScale;
  final double desktopScale;
  final double minGridSize;

  const _AdaptiveBingoGrid({
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
            borderRadius: BorderRadius.circular(12),
          ),
          child: const BingoGrid(),
        );
      },
    );
  }
}

class BingoGrid extends StatelessWidget {
  const BingoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
      ),
      itemCount: 25,
      itemBuilder: (context, index) => _BingoNumberCell(number: index + 1),
    );
  }
}

class _BingoNumberCell extends StatelessWidget {
  final int number;

  const _BingoNumberCell({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondaryColor),
      ),
      child: Material(
        color: Colors.blue[100],
        child: InkWell(
          onTap: () => _handleTap(),
          child: Center(
            child: Text(
              '$number',
              style: context.caption,
            ),
          ),
        ),
      ),
    );
  }

  void _handleTap() {
    // Handle tap logic
  }
}
