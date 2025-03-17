import 'package:bingo/core/layout/responsive.dart';
import 'package:bingo/features/home/presentation/views/widgets/desktop_home_view.dart';
import 'package:bingo/features/home/presentation/views/widgets/mobile_home_view.dart';
import 'package:bingo/features/home/presentation/views/widgets/tablet_home_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobile: MobileHomeView(),
        tablet: TabletHomeView(),
        desktop: DesktopHomeView(),
      ),
    );
  }
}
