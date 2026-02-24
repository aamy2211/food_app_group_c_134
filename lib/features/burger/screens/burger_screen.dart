// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/burger_card.dart';
import 'package:food_app/core/widgets/section_header.dart';
import 'package:food_app/features/burger/widgets/build_header.dart';
import 'package:food_app/features/burger/widgets/restaurant_card.dart';

class BurgersScreen extends StatelessWidget {
  const BurgersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyLite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Custom Header (Top Row) ---
              BuildHeader(context: context),

              const SizedBox(height: 25),

              // --- Popular Burgers Section ---
              const SectionHeader(title: "Popular Burgers"),
              const SizedBox(height: 15),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.75, // ضبط تناسق الطول مع العرض
                children: [
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Burger Bistro",
                    subtitle: "Rose Garden",
                    price: "\$40",
                  ),
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Smokin' Burger",
                    subtitle: "Cafenio Restaurant",
                    price: "\$60",
                  ),
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Buffalo Burgers",
                    subtitle: "Kaji Firm Kitchen",
                    price: "\$75",
                  ),
                  BurgerCard(
                    context: context,
                    image: AppImages.picture1,
                    title: "Bullseye Burgers",
                    subtitle: "Kabab Restaurant",
                    price: "\$94",
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // --- Open Restaurants Section ---
              const SectionHeader(title: "Open Restaurants"),
              const SizedBox(height: 15),

              RestaurantCard(context: context),
            ],
          ),
        ),
      ),
    );
  }
}
