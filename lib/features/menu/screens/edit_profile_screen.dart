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
      backgroundColor: AppColors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: ContainerButton(
          color: AppColors.primary,
          height: 62.h,
          radius: 12.r,
          onTap: () {},
          child: Center(
            child: Text(
              "SAVE",
              style: TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.bold),
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
            Center(
              child: SizedBox(
                width: 130.r,
                height: 130.r,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 65.r,
                      backgroundColor: AppColors.peach,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 30.w,
                        height: 30.w,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppIcons.pen,
                            width: 14.w,
                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                  CustomTextField(label: "Bio", hint: "I love fast food", maxLines: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
