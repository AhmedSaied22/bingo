import 'package:bingo/core/theme/theme.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/core/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20.h,
        children: [
          Text('BINGO',style: AppTheme.,),
          MainButton(title: 'Join a game', color: AppColors.secondaryColor),
          MainButton(title: 'Create a game', color: AppColors.primaryColor),
        ],
      ),
    );
  }
}
