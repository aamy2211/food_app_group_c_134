// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/icon_text.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Tasty Treat Gallery",
          style: TextStyles.body.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            // تقييم المطعم
            IconText(
              iconPath: AppIcons.star,
              text: "4.7",
              textStyle: TextStyles.body,
            ),
            const SizedBox(width: 20),

            // خدمة التوصيل
            IconText(
              iconPath: AppIcons.car,
              text: "Free",
              textStyle: TextStyles.body,
            ),
            const SizedBox(width: 20),

            // وقت التوصيل
            IconText(
              iconPath: AppIcons.clock,
              text: "20 min",
              textStyle: TextStyles.body,
            ),
          ],
        ),
      ],
    );
  }
}
