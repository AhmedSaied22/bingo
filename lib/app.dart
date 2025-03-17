import 'package:bingo/core/routes/routes_gen.dart';
import 'package:bingo/core/routes/routes_name.dart';
import 'package:bingo/core/theme/theme.dart';
import 'package:bingo/main.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bingo Game',
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Container(
          decoration: const BoxDecoration(
            gradient: AppTheme.scaffoldGradient,
          ),
          child: child,
        );
      },
      initialRoute: RoutesName.home,
      navigatorKey: navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
