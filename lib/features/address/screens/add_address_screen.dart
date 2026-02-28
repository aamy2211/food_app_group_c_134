import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/core/widgets/custom_text_field.dart';
import 'package:food_app/core/widgets/field_label.dart';
import 'package:food_app/core/widgets/search_field.dart';
import 'package:food_app/features/address/widgets/address_selector.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  AppIcons.mapicon,
                  width: double.infinity,
                  height: 350.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50.h,
                  left: 20.w,
                  child: CircleAvatar(
                    backgroundColor: AppColors.secondary,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.white,
                        size: 18.sp,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FieldLabel(label: "ADDRESS"),
                  SearchField(
                    hintText: "3235 Royal Ln. Mesa, New Jersey 34567",
                    prefixIcon: Image.asset(AppImages.location, width: 20.w, height: 20.h),
                  ),

                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FieldLabel(label: "STREET"),
                            const CustomTextField(hint: "Hason Nagar"),
                          ],
                        ),
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FieldLabel(label: "POST CODE"),
                            const CustomTextField(hint: "34567"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15.h),
                  const FieldLabel(label: "APPARTMENT"),
                  const CustomTextField(hint: "345"),

                  SizedBox(height: 20.h),
                  const FieldLabel(label: "LABEL AS"),
                  const AddressSelector(),

                  SizedBox(height: 40.h),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: "SAVE LOCATION",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
