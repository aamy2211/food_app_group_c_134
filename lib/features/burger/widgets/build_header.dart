// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/circular_icon_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(backgroundColor: Colors.blueGrey.withOpacity(0.1)),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.describtion.withOpacity(0.3)),
          ),
          child: Row(
            children: [
              Text("BURGER", style: TextStyles.body),
              const Icon(Icons.arrow_drop_down, color: Colors.orange),
            ],
          ),
        ),
        const Spacer(),
        CircularIconButton(
          iconPath: AppIcons.search,
          backgroundColor: AppColors.secondary,
          iconColor: Colors.white,
          iconSize: 20,
        ),
        const SizedBox(width: 10),
        CircularIconButton(
          iconPath: AppIcons.filter,
          backgroundColor: AppColors.describtion.withOpacity(
            0.1,
          ), // خلفية داكنة
          iconColor: AppColors.secondary, // لون أيقونة أبيض
          iconSize: 30, // حجم أصغر شوية ليناسب التصميم
          onPressed: () {
            // Search logic
          },
        ),
      ],
    );
  }
}
