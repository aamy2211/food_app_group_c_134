import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/build_food_item.dart';

class PopularFoodList extends StatelessWidget {
  const PopularFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        separatorBuilder: (context, index) {
          return SizedBox(width: 12.w);
        },
        itemBuilder: (context, index) {
          return buildFoodItem();
        },
      ),
    );
  }
}
