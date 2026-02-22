import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';

class ProductAtrributes extends StatelessWidget {
  const ProductAtrributes({
    super.key, required this.icon, required this.text,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10),
        Text(text, style: TextStyles.captionB),
      ],
    );
  }
}
