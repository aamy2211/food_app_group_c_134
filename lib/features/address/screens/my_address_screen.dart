import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/address/screens/add_address_screen.dart';
import 'package:food_app/features/address/widgets/address_card.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Row(
                children: [
                  CustomBackButton(backgroundColor: AppColors.greyLite),
                  SizedBox(width: 20.w),
                  Text("My Address", style: TextStyles.body.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.secondary,
                  )),
                ],
              ),
              SizedBox(height: 30.h),

              AddressCard(
                title: "HOME",
                fullAddress: "2464 Royal Ln. Mesa, New Jersey 45463",
                image: AppIcons.home,
                color: AppColors.primary,
              ),
              AddressCard(
                title: "WORK",
                fullAddress: "3891 Ranchview Dr. Richardson, California 62639",
                image: AppIcons.call,
                color: AppColors.secondary,
              ),

              const Spacer(),

              CustomButton(
                text: 'Add new address',
                onPressed: () {
                  pushTo(context, const AddAddressScreen());
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
