import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/core/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateGameView extends StatelessWidget {
  const CreateGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 24.h,
            children: [
              Text(
                'Create a new game and start the excitement!',
                style: context.bodyLarge,
              ),
              const MainButton(
                label: 'Create a game',
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
