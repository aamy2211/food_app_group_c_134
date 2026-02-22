import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_icons.dart';

class Ingridents extends StatelessWidget {
  const Ingridents({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: AppColors.ingridents,
        borderRadius: BorderRadius.circular(50),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
