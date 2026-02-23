import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';

Stack buildFoodItem() => Stack(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Container(
        width: 153,
        height: 102,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.greyLite,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("European Pizza"),
              Text(
                "Uttora Coffe House",
                style: TextStyle(color: AppColors.describtion),
              ),
            ],
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: 122,
        height: 84,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.describtion,
        ),
      ),
    ),
  ],
);
