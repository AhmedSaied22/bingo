import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final double mobileBreakpoint;
  final double tabletBreakpoint;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileBreakpoint = 599,
    this.tabletBreakpoint = 1199,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 599;

  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > 599 && width <= 1199;
  }

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1199;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        if (width > tabletBreakpoint) {
          return desktop;
        } else if (width > mobileBreakpoint) {
          return tablet ?? desktop; 
        } else {
          return mobile;
        }
      },
    );
  }
}
