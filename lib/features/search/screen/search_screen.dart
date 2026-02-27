import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_badge_button.dart';

import 'package:food_app/core/widgets/search_field.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/popular_food_list.dart';
import 'package:food_app/features/search/widgets/RecentKeywordsList/recent_keywords_list.dart';
import 'package:food_app/features/search/widgets/SuggestedRestaurantsList/suggested_restaurants_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w, top: 30.h),
                    child: Container(
                      width: 45.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
                        color: AppColors.ingridents,
                      ),
                      child: const CustomBackButton(
                        backgroundColor: AppColors.iceBlue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 30.h),
                    child: Text("Search", style: TextStyle(fontSize: 17.sp)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, right: 15.w),
                    child: CustomBadgeButton(
                      iconPath: AppImages.shoppingBag,
                      itemCount: 2, // Matches Figma design count
                      onPressed: () {
                        // TODO: Navigate to cart
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(24.r),
                child: SearchField(
                  hintText: 'Search dishes, restaurants',
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(20.r),
                    child: SvgPicture.asset("assets/icons/close.svg"),
                  ),
                  onTap: () {
                    // TODO: Navigate to Search Screen
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Text(
                  "Recent Keywords",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              RecentKeywordsList(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text(
                  "Suggested Restaurants",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SuggestedRestaurantsList(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(bottom: 10, left: 20.w),
                child: Text(
                  "Popular Fast food",
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              PopularFoodList(),
            ],
          ),
        ),
      ),
    );
  }
}
