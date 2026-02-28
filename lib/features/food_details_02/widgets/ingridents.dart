import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';

class Ingridents extends StatelessWidget {
  const Ingridents({
    super.key,
    required this.icon,
    this.color = AppColors.ingridents,
    this.color1,
    this.s = 0,
  });
  final String icon;
  final Color color;
  final Color? color1;
  final double s;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      width: 45.w,
      height: 45.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(s),
        child: SvgPicture.asset(
          icon,
          colorFilter: color1 != null
              ? ColorFilter.mode(color1!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
