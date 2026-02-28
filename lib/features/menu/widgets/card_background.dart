import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';

class CardBackground extends StatelessWidget {
  const CardBackground({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 320,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.iceBlue,
        ),
      ),
    );
  }
}
