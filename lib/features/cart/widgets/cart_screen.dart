import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/features/cart/widgets/counter.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({
    super.key, this.image, required this.title, required this.price, required this.size,

  });
    final String? image;
    final String title;
    final String price;
    final String size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 136,
          height: 120,
          decoration: BoxDecoration(
            color: AppColors.lightGrey, // خلفية بيضاء
            borderRadius: BorderRadius.circular(25), // زوايا دائرية
          ),
          // child: Image.asset(
          //   'image',
          //   fit: BoxFit.cover,
          // ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Text(
                      '$title',
                      style: TextStyles.body.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    SvgPicture.asset(AppIcons.cancel),
                  ],
                ),
              ],
            ),
    
            SizedBox(height: 8),
    
            Text(
              '\$$price',
              style: TextStyles.body.copyWith(
                color: AppColors.primary,
              ),
            ),
    
            Row(
              spacing: 60,
              children: [
                Text(
                  '$size"',
                  style: TextStyles.captionB.copyWith(
                    color: AppColors.white,
                  ),
                ),
    
                QuantityCounter(), // استخدم Counter من ملف counter.dart
              ],
            ),
          ],
        ),
      ],
    );
  }
}
