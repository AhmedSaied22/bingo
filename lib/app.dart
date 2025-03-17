import 'package:bingo/core/routes/routes_gen.dart';
import 'package:bingo/core/routes/routes_name.dart';
import 'package:bingo/core/theme/theme.dart';
import 'package:bingo/core/ui/widgets/scaffold_bg.dart';
import 'package:bingo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Bingo Game',
          theme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          // In your MyApp widget's builder:
          builder: (context, child) {
            return ScaffoldBackground(
              child: child!,
            );
          },
          initialRoute: RoutesName.home,
          navigatorKey: navigatorKey,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
