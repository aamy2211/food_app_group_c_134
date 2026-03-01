import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 9,

        padding: EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) {
          return SizedBox(width: 9);
        },
        itemBuilder: (context, index) {
          return buildCategoryItem(index);
        },
      ),
    );
  }

  GestureDetector buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 90,
        height: 60,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: selectedIndex == index ? AppColors.primary : AppColors.white,
          boxShadow: [BoxShadow(color: AppColors.describtion, blurRadius: 3)],
        ),
        child: Center(
          child: Text(
            'Burger',
            style: TextStyles.caption.copyWith(
              color: selectedIndex == index
                  ? AppColors.white
                  : AppColors.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
