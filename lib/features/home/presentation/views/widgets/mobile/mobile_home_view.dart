import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/core/extensions/media_query_extensions.dart';
import 'package:bingo/core/ui/app_colors.dart';
import 'package:bingo/features/home/presentation/views/widgets/home_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileHomeView extends StatelessWidget {
  const MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.h,
        children: [
          Text(
            'BINGO',
            style: context.headingLarge,
          ),
          Divider(
            thickness: 2.w,
            color: AppColors.primaryColor.withValues(alpha: 0.5),
            indent: context.screenWidth * 0.35,
            endIndent: context.screenWidth * 0.35,
          ),
          SizedBox(height: context.screenHeight * 0.03),
          HomeButtons(),
        ],
      ),
    );
  }
}
