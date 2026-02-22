import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/theme/themes.dart';
import 'package:food_app/features/splash/splash_view.dart';
//import 'core/utils/app_fonts.dart';
import 'core/styles/app_colors.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food App Group C-134',
          theme: AppThemes.lightThemes,
          home: SplashView(),
        );
      },
    );
  }
}
