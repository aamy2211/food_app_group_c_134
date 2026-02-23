import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_icons.dart';

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
              borderRadius: BorderRadius.circular(15),
              color: AppColors.describtion,
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text("Pansi Restaurant", style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.star,
                    width: 15,
                    height: 15,
                    colorFilter: ColorFilter.mode(
                      AppColors.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text("4.7"),
                ],
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
