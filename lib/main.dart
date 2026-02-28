/*
  ******************************************************************************
  * ملاحظة هامة جداً لجميع المطورين:
  * يرجى عدم تعديل أي شيء في هذا الملف (main.dart) بأي شكل من الأشكال.
  * هذا الملف تم ضبطه ليعمل مع المسار الحالي للتطبيق وأي تغيير فيه قد يؤدي
  * إلى مشاكل في تشغيل الصفحات التي نعمل عليها حالياً.
  ******************************************************************************
*/

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/theme/themes.dart';
import 'package:food_app/features/address/screens/my_address_screen.dart';
import 'package:food_app/features/address/screens/add_address_screen.dart';
import 'package:food_app/features/splash/splash_view.dart';
//import 'core/utils/app_fonts.dart';

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
          home: MyAddressScreen(),
        );
      },
    );
  }
}
