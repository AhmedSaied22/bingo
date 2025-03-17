import 'package:bingo/core/layout/responsive.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomeView(),
      tablet: TabletHomeView(),
      desktop: DesktopHomeView(),
    );
  }
}
