import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/functions/navigations.dart';

import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/features/menu/screens/edit_profile_screen.dart';
import 'package:food_app/features/menu/widgets/card_background.dart';
import 'package:food_app/features/menu/widgets/profile_menu_item.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

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
                  Text("Personal Info", style: TextStyles.body2),
                  SizedBox(width: 80.w),

                  // ContainerButton(
                  //   color: Colors.transparent,

                  //   onTap: () {
                  //     pushTo(context, EditProfileScreen());
                  //   },
                  //   // child: SvgPicture.asset(AppIcons.edit),
                  // ),
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
                CardBackground(height: 220),
                Column(
                  children: [
                    ProfileMenuItem(
                      icon: AppIcons.user,
                      text: 'Full Name',
                      text1: "Vishal Khadok",
                      color: AppColors.primary,
                      onPressed: () {},
                    ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.email,
                    //   text: 'Email',
                    //   text1: "hello@halallab.co",
                    //   onPressed: () {},
                    // ),
                    // ProfileMenuItem(
                    //   icon: AppIcons.call,
                    //   color: AppColors.blue,
                    //   text: 'Phone Number',
                    //   text1: "408-841-0926",
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
