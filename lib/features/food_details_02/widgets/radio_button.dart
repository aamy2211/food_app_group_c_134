import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:group_button/group_button.dart';

class SizeSelector extends StatelessWidget {
  const SizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return GroupButton(
      buttons: const ["10\"", "14\"", "16\""],
      options: GroupButtonOptions(
        selectedColor: AppColors.primary,
        unselectedColor: AppColors.greyLite,
        selectedTextStyle: TextStyles.captionB.copyWith(color: AppColors.white),
        unselectedTextStyle: TextStyles.caption.copyWith(color: AppColors.secondary),
        borderRadius: BorderRadius.circular(25.r),
        buttonHeight: 50.h,
        buttonWidth: 50.w,
        spacing: 11.w,
      ),
      onSelected: (value, index, isSelected) {
        // Handle selection
      },
    );
  }
}
