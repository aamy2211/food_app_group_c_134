import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/text_styles.dart';

class ProductAtrributes extends StatelessWidget {
  const ProductAtrributes({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 14.w,
          height: 14.h,
        ),
        SizedBox(width: 10.w),
        Text(
          text,
          style: TextStyles.captionB.copyWith(fontSize: 14.sp),
        ),
      ],
    );
  }
}
