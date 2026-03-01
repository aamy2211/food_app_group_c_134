import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.text,
    this.text1,
    this.color,
    required this.onPressed,
  });
  final String icon;
  final String text;
  final String? text1;
  final Color? color;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 20.h),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10.r),
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(
                  color: (color ?? AppColors.primary).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  icon,
                  colorFilter: ColorFilter.mode(
                    color ?? AppColors.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 14.w),
                    child: Text(text),
                  ),
                  if (text1 != null)
                    Padding(
                      padding: EdgeInsets.only(left: 14.w, top: 4.h),
                      child: Text(
                        text1!,
                        style: TextStyle(color: AppColors.describtion),
                      ),
                    ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 45.w),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.arrow_forward_ios, size: 15),
            ),
          ),
        ],
      ),
    );
  }
}
