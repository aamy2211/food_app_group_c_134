import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';

import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/features/menu/screens/profile_screen.dart';
import 'package:food_app/features/restaurant_view/widgets/category_selector/category_selector.dart';
import 'package:food_app/features/restaurant_view/widgets/food_card_list/food_card_list.dart';
import 'package:food_app/features/restaurant_view/widgets/restaurant_info/restaurant_info_row.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const ImageCarousel(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 40.h,
                    horizontal: 20.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomBackButton(
                        backgroundColor: AppColors.iceBlue,
                      ),
                      ContainerButton(
                        color: AppColors.iceBlue,
                        onTap: () {
                          pushTo(context, ProfileScreen());
                        },
                        child: const Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RestaurantInfoRow(),
                  SizedBox(height: 20.h),
                  Text(
                    'Spicy Restaurant',
                    style: TextStyles.body.copyWith(fontSize: 20.sp),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Maecenas sed diam eget risus varius blandit sit omet non magna. Integer posuere erat a ante venenatis dopibus posuere velit aliquet.',
                    style: TextStyles.captionB.copyWith(
                      color: AppColors.describtion,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            const CategorySelector(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Burger (10)',
                    style: TextStyles.body.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const FoodCardList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items:
              [
                AppImages.picture1,
                AppImages.picture1,
                AppImages.picture1,
                AppImages.picture1,
                AppImages.picture1,
              ].map((image) {
                return ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(25.r),
                  ),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              }).toList(),
          options: CarouselOptions(
            height: 260.h,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 220.h),
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: 5,
              effect: WormEffect(
                dotHeight: 8.h,
                dotWidth: 8.w,
                activeDotColor: AppColors.white,
                dotColor: AppColors.imageBackground,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
