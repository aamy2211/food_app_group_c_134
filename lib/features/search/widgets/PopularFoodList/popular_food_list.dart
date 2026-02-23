import 'package:flutter/material.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/build_food_item.dart';

class PopularFoodList extends StatelessWidget {
  const PopularFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) {
          return SizedBox(width: 12);
        },
        itemBuilder: (context, index) {
          return buildFoodItem();
        },
      ),
    );
  }
}
