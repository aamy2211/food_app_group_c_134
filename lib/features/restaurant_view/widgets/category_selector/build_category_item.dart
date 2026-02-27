import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/features/search/data/product_model.dart';

class BuildCategoryItem extends StatelessWidget {
  final ProductModel model;
  final bool isSelected;
  final VoidCallback onTap;

  const BuildCategoryItem({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.w, // Slightly wider for better text fit
        height: 60.h,
        margin: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: isSelected ? AppColors.primary : AppColors.white,
          boxShadow: [
             BoxShadow(
               color: AppColors.describtion.withValues(alpha: 0.3), 
               blurRadius: 3,
               offset: Offset(0, 2.h),
             )
          ],
        ),
        child: Center(
          child: Text(
            model.name,
            style: TextStyles.caption.copyWith(
              fontSize: 14.sp,
              color: isSelected ? AppColors.white : AppColors.secondary,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
