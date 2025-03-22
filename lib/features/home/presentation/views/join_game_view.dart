import 'package:bingo/core/extensions/font_styles_extensions.dart';
import 'package:bingo/core/extensions/media_query_extensions.dart';
import 'package:bingo/core/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinGameView extends StatelessWidget {
  const JoinGameView({super.key});

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
                'Ready to play? Enter your game code now!',
                style: context.bodyLarge,
              ),
              SizedBox(
                width: context.screenWidth * 0.5,
                child: CustomTextField(
                  hintText: 'Enter code here...',
                  fillColor: Colors.transparent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
