import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food_app/features/restaurant_view/widgets/category_selector/build_category_item.dart';
import 'package:food_app/features/search/data/product_model.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key, this.model});
  final ProductModel? model;

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0; // Default to first item
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: recentKeywords.length,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        separatorBuilder: (context, index) {
          return SizedBox(width: 9.w);
        },
        itemBuilder: (context, index) {
          var model = recentKeywords[index];

          return BuildCategoryItem(
            model: model,
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
