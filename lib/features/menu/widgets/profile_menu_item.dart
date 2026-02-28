import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/features/food_details_02/widgets/ingridents.dart';

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
      padding: const EdgeInsets.only(left: 30, top: 20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Ingridents(
              //   icon: icon,
              //   color: AppColors.white,
              //   s: 4,
              //   color1: color,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(text),
                  ),
                  if (text1 != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 14, top: 4),
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
            padding: const EdgeInsets.only(right: 30),
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
