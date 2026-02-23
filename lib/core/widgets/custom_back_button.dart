import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: const BoxDecoration(
        color: AppColors.iceBlue,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 20,
        ),
        onPressed:
            onPressed ??
            () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
      ),
    );
  }
}
