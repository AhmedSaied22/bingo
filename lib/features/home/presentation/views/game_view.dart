import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/features/home/presentation/views/widgets/adaptive_bingo_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            spacing: 24.h,
            children: [
              Text(
                "We're in the Bingo game! Tap a number to select it.",
                style: context.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const AdaptiveBingoGrid(
                mobileScale: 0.7,
                tabletScale: 0.6,
                desktopScale: 0.4,
                minGridSize: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
