import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/features/menu/screens/personal_info_screen.dart';
import 'package:food_app/features/menu/widgets/card_background.dart';
import 'package:food_app/features/menu/widgets/profile_menu_item.dart';
import 'package:food_app/features/address/screens/my_address_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CustomBackButton(backgroundColor: AppColors.iceBlue),
                  SizedBox(width: 16.w),
                  Text("Profile", style: TextStyles.body2),
                  const Spacer(),

                  ContainerButton(
                    color: AppColors.iceBlue,

                    onTap: () {},
                    child: const Center(
                      child: Icon(Icons.more_horiz, color: Colors.black, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 24.w),
                  child: CircleAvatar(
                    maxRadius: 50.r,
                    backgroundColor: AppColors.peach,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vishal Khadok", style: TextStyles.body2),
                    Text(
                      "I love fast food",
                      style: TextStyles.caption.copyWith(
                        color: AppColors.describtion,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.h),
            Stack(
              children: [
                CardBackground(height: 150.h),
                Column(
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.user,
                      text: 'Personal Info',
                      color: AppColors.primary,
                      onPressed: () {
                        pushTo(context, PersonalInfoScreen());
                      },
                    ),
                    ProfileMenuItem(
                      icon: AppIcons.map,
                      color: AppColors.purple,
                      text: 'Addresses',
                      onPressed: () {
                        pushTo(context, const MyAddressScreen());
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Stack(
              children: [
                CardBackground(height: 285.h),
                Column(
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.cart,
                      text: 'Cart',
                      color: AppColors.blue,
                      onPressed: () {},
                    ),
                    ProfileMenuItem(
                      icon: AppIcons.heart,
                      text: 'Favorite',
                      color: AppColors.purple,
                      onPressed: () {},
                    ),
                    ProfileMenuItem(
                      icon: AppIcons.bell,
                      color: AppColors.yellow,
                      text: 'Notifications',
                      onPressed: () {},
                    ),
                    ProfileMenuItem(
                      icon: AppIcons.creditCard,
                      color: AppColors.blue,
                      text: 'Payment Method',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),

            Stack(
              children: [
                CardBackground(height: 220.h),
                Column(
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.question,
                      text: 'FAQs',
                      color: AppColors.primary,
                      onPressed: () {},
                    ),
                    ProfileMenuItem(
                      icon: AppIcons.userReviews,
                      color: AppColors.cyan,
                      text: 'User Reviews',
                      onPressed: () {},
                    ),
                    ProfileMenuItem(
                      icon: AppIcons.settings,
                      color: AppColors.purple,
                      text: 'Settings',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),

            Stack(
              children: [
                CardBackground(height: 80.h),
                Column(
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.logout,
                      text: 'Log Out',
                      color: AppColors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
