import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/features/food_details_02/widgets/ingridents.dart';
import 'package:food_app/features/menu/screens/personal_Info_screen.dart';
import 'package:food_app/features/menu/widgets/card_background.dart';
import 'package:food_app/features/menu/widgets/profile_menu_item.dart';

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
                  SizedBox(width: 150.w),

                  ContainerButton(
                    color: AppColors.iceBlue,

                    onTap: () {},
                    child: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: AppColors.green,
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
            SizedBox(height: 32),
            Stack(
              children: [
                CardBackground(height: 150),
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
                    // ProfileMenuItem(
                    //   icon: AppIcons.map,
                    //   text: 'Addresses',
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                CardBackground(height: 285),
                Column(
                  children: [
                    // ProfileMenuItem(
                    //   icon: AppIcons.cart,
                    //   text: 'Cart',
                    //   color: AppColors.blue,
                    //   onPressed: () {},
                    // ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.heart,
                    //   text: 'Favorite',
                    //   color: AppColors.purple,
                    //   onPressed: () {},
                    // ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.bell,
                    //   text: 'Notifications',
                    //   onPressed: () {},
                    // ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.creditCard,
                    //   text: 'Payment Method',
                    //   color: AppColors.blue,
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            Stack(
              children: [
                CardBackground(height: 220),
                Column(
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.question,
                      text: 'FAQs',
                      color: AppColors.primary,
                      onPressed: () {},
                    ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.userReviews,
                    //   text: 'User Reviews',
                    //   onPressed: () {},
                    // ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.settings,
                    //   text: 'Settings',
                    //   onPressed: () {},
                    // ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            Stack(
              children: [
                CardBackground(height: 80),
                Column(
                  children: [
                    // ProfileMenuItem(
                    //   icon: AppIcons.logout,
                    //   text: 'Log Out',
                    //   color: AppColors.red,
                    //   onPressed: () {},
                    // ),
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
