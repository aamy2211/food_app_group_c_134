import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/icon_text.dart';

class RestaurantInfoRow extends StatelessWidget {
  const RestaurantInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconText(
            iconPath: AppIcons.star,
            text: "4.7",
            textStyle: TextStyles.body.copyWith(
              color: AppColors.secondary,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(width: 30.w),
          IconText(
            iconPath: AppIcons.car,
            text: "free",
            textStyle: TextStyles.body.copyWith(
              color: AppColors.secondary,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(width: 30.w),
          IconText(
            iconPath: AppIcons.clock,
            text: "20 min",
            textStyle: TextStyles.body.copyWith(
              color: AppColors.secondary,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}
