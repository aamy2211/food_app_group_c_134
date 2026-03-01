import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart'; 
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/utils/app_icons.dart';

import 'package:food_app/features/auth/screens/login_empty_screen.dart';

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
      pushReplacementTo(context, LoginEmptyScreen());
     
    });
  }

  
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
          
          Positioned(
            top: 0,
            left: 0,
            child: buildImage(AppIcons.highlogo, width: screenWidth * 0.50),
          ),

          
          Positioned(
            bottom: 0,
            right: 0,
            child: buildImage(AppIcons.logo2, width: screenWidth * 0.5),
          ),

          
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
               
                buildImage(AppIcons.foodLogo, width: 200),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
