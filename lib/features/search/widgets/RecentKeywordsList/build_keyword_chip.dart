import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/features/search/data/product_model.dart';

class BuildKeywordChip extends StatelessWidget {
  const BuildKeywordChip({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onTap,
  });
  final ProductModel model;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isSelected ? AppColors.primary : Colors.white,
          boxShadow: [
            BoxShadow(
              color: isSelected ? Colors.transparent : Color(0xffEDEDED),
              spreadRadius: 2,
            )
          ],
        ),
        margin: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            model.name,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
