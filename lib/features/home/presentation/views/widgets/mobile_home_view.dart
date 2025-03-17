import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/core/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('BINGO'),
        MainButton(title: 'Join a game', color: AppColors.secondaryColor),
        MainButton(title: 'Create a game', color: AppColors.primaryColor),
      ],
    );
  }
}
