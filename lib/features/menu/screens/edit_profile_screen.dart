import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ContainerButton(
          color: AppColors.primary,
          height: 62.h,
          onTap: () {},
          radius: 15.r,
          child: Center(
            child: Text(
              "Save",
              style: TextStyle(color: AppColors.white, fontSize: 20),
            ),
          ),
        ),
      ),
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
                  Text("Edit Profile", style: TextStyles.body2),
                ],
              ),
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: AppColors.green,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190.w, top: 80.h),
                  child: Row(
                    children: [
                      ContainerButton(
                        width: 30,
                        height: 30,
                        color: AppColors.primary,
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(7),
                          child: SvgPicture.asset(AppIcons.pen),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  CustomTextField(label: "Full Name", hint: "Vishal Khadok"),
                  SizedBox(height: 30.h),

                  CustomTextField(label: "Email", hint: "hello@halallab.co"),
                  SizedBox(height: 24.h),

                  CustomTextField(label: "Phone Number", hint: "408-841-0926"),
                  SizedBox(height: 24.h),
                  CustomTextField(label: "Bio", hint: "I love fast food"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
