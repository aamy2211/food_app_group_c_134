import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_images.dart';

class AddressCard extends StatelessWidget {
  final String title;
  final String fullAddress;
  final String image;
  final Color color;

  const AddressCard({
    super.key,
    required this.title,
    required this.fullAddress,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.greyLite,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.r),
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              image,
              width: 20.w,
              height: 20.h,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  fullAddress,
                  style: TextStyles.caption.copyWith(
                    color: AppColors.describtion,
                    fontSize: 12.sp,
                    height: 1.4,
                  ),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          SizedBox(width: 8.w),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(AppImages.edit, width: 20.w, height: 20.h),
              SizedBox(width: 10.w),
              SvgPicture.asset(AppImages.delete, width: 20.w, height: 20.h),
            ],
          ),
        ],
      ),
    );
  }
}
