import 'package:bingo/core/routes/routes_name.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/core/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        MainButton(
          label: 'Join a game',
          color: AppColors.secondaryColor,
          onPressed: () => Navigator.pushNamed(context, RoutesName.joinGame),
        ),
        MainButton(
          label: 'Create a game',
          color: AppColors.primaryColor,
          onPressed: () => Navigator.pushNamed(context, RoutesName.createGame),
        ),
      ],
    );
  }
}
