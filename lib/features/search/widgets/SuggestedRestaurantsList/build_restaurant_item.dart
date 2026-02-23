import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/icon_text.dart';
import 'package:google_fonts/google_fonts.dart';

Column buildRestaurantItem() => Column(
  children: [
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Container(
            width: 70,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.describtion,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          children: [
            Text("Pansi Restaurant", style: TextStyle(fontSize: 16.sp)),
            Padding(
              padding: EdgeInsets.only(right: 100.w),
              child: IconText(
                iconPath: AppImages.star,
                text: "4.7",
                textStyle: GoogleFonts.sen(
                  color: const Color(0xFF181C2E),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    SizedBox(height: 14),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Divider(),
    ),
  ],
);
