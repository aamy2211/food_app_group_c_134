import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/icon_text.dart';
import 'package:food_app/features/restaurant_view/screen/restaurant_screen.dart';

class RestaurantCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String tags;
  final String rating;
  final String deliveryFee;
  final String deliveryTime;

  const RestaurantCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.tags,
    required this.rating,
    required this.deliveryFee,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {
        pushTo(context, const RestaurantScreen());
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.imageBackground,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
                child: Image.asset(
                   imageUrl.isEmpty ? AppImages.picture1 : imageUrl,
                   fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyles.body.copyWith(
                      color: AppColors.secondary,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    tags,
                    style: TextStyles.caption.copyWith(
                      color: AppColors.describtion,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      IconText(
                        iconPath: AppImages.star,
                        text: rating,
                        textStyle: TextStyles.body.copyWith(
                          color: AppColors.secondary,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 24.w),
                      IconText(
                        iconPath: AppImages.delivery,
                        text: deliveryFee,
                        textStyle: TextStyles.caption.copyWith(
                          color: AppColors.secondary,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(width: 24.w),
                      IconText(
                        iconPath: AppImages.clock,
                        text: deliveryTime,
                        textStyle: TextStyles.caption.copyWith(
                          color: AppColors.secondary,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
