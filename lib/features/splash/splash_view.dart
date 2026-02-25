import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart'; // تأكد إنك ضفت المكتبة دي
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/utils/app_icons.dart';

import 'package:food_app/features/auth/screens/login_empty_screen.dart';
import 'package:food_app/features/food_details_02/screens/food_details_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      pushReplacementTo(context, const LoginEmptyScreen());
    });
  }

  // فنكشن بسيطة عشان نختار النوع الصح للصور (SVG أو PNG) أوتوماتيك
  Widget buildImage(
    String assetPath, {
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    if (assetPath.endsWith('.svg')) {
      return SvgPicture.asset(assetPath, width: width, fit: fit);
    } else {
      return Image.asset(assetPath, width: width, fit: fit);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 1. الصورة اللي فوق على الشمال (الرمادية)
          Positioned(
            top: 0,
            left: 0,
            child: buildImage(AppIcons.highlogo, width: screenWidth * 0.50),
          ),

          // 2. الصورة البرتقالية اللي تحت على اليمين (النقشة الكبيرة)
          Positioned(
            bottom: 0,
            right: 0,
            child: buildImage(AppIcons.logo2, width: screenWidth * 0.5),
          ),

          // 3. اللوجو بالكامل في النص (الطربوش + كلمة FOOD)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // مسافة بين الطربوش والكلمة
                // كلمة FOOD كاملة
                buildImage(AppIcons.foodLogo, width: 200),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
