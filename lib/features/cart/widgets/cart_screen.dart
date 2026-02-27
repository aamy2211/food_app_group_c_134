import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/features/cart/widgets/counter.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({
    super.key,
    this.image,
    required this.title,
    required this.price,
    required this.size,
  });
  final String? image;
  final String title;
  final String price;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 136.w,
          height: 120.h,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.r),
            child: Image.asset(
              image ?? AppImages.picture1, // Default image if none provided
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyles.body.copyWith(
                        color: AppColors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {}, // Add removal logic if needed
                    child: SvgPicture.asset(
                      AppIcons.cancel,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                '\$$price',
                style: TextStyles.body.copyWith(
                  color: AppColors.primary,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$size"',
                    style: TextStyles.captionB.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const QuantityCounter(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
