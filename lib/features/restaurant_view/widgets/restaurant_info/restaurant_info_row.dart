import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/icon_text.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantInfoRow extends StatelessWidget {
  const RestaurantInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconText(
          iconPath: AppIcons.star,
          text: "4.7",
          textStyle: GoogleFonts.sen(
            color: const Color(0xFF181C2E),
            fontSize: 14,
          ),
        ),
        SizedBox(width: 30.w),
        IconText(
          iconPath: AppIcons.car,
          text: "free",
          textStyle: GoogleFonts.sen(
            color: const Color(0xFF181C2E),
            fontSize: 14,
          ),
        ),
        SizedBox(width: 30.w),
        IconText(
          iconPath: AppIcons.clock,
          text: "20 min",
          textStyle: GoogleFonts.sen(
            color: const Color(0xFF181C2E),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
