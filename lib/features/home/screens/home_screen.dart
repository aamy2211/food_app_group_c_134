import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/widgets/search_field.dart';
import 'package:food_app/core/widgets/custom_badge_button.dart';
import 'package:food_app/core/widgets/section_header.dart';
import 'package:food_app/core/widgets/category_list.dart';
import 'package:food_app/core/widgets/circular_icon_button.dart';
import 'package:food_app/core/widgets/location_header_dropdown.dart';
import 'package:food_app/features/home/widgets/restaurant_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Custom AppBar
                Row(
                  children: [
                    // Menu Icon
                    CircularIconButton(
                      iconPath: AppImages.menu,
                      onPressed: () {
                        // TODO: Open Drawer or Menu
                      },
                    ),

                    const SizedBox(
                      width: 4,
                    ), // 4 pixels left padding to perfectly align text starting at (X = 48)
                    // Location
                    const Expanded(
                      child: LocationHeaderDropdown(
                        selectedLocation: 'Halal Lab office',
                      ),
                    ),

                    // Cart Icon
                    CustomBadgeButton(
                      iconPath: AppImages.shoppingBag,
                      itemCount: 2, // Matches Figma design count
                      onPressed: () {
                        // TODO: Navigate to cart
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Greeting text
                Text.rich(
                  TextSpan(
                    text: 'Hey Halal, ',
                    style: GoogleFonts.sen(
                      color: const Color(0xFF32343E),
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Good Afternoon!',
                        style: GoogleFonts.sen(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Search Bar Placeholder
                SearchField(
                  hintText: 'Search dishes, restaurants',
                  readOnly: true,
                  onTap: () {
                    // TODO: Navigate to Search Screen
                  },
                ),

                const SizedBox(height: 24),

                // All Categories Header
                SectionHeader(
                  title: 'All Categories',
                  onActionPressed: () {
                    // TODO: Navigate to All Categories view
                  },
                ),

                const SizedBox(height: 16),

                // Categories List (Horizontal Scroll)
                const CategoryList(
                  categories: ['Pizza', 'Burger', 'Hotdog', 'Pizza'],
                ),

                const SizedBox(height: 24),

                // Open Restaurants Header
                SectionHeader(
                  title: 'Open Restaurants',
                  onActionPressed: () {
                    // TODO: Navigate to All Restaurants view
                  },
                ),

                const SizedBox(height: 16),

                // Open Restaurants Card
                const RestaurantCard(
                  imageUrl: '', // Placeholder for now
                  name: 'Rose Garden Restaurant',
                  tags: 'Burger - Chicken - Riche - Wings',
                  rating: '4.7',
                  deliveryFee: 'Free',
                  deliveryTime: '20 min',
                ),

                const SizedBox(height: 16),

                // Second Restaurant Card
                const RestaurantCard(
                  imageUrl: '', // Placeholder for now
                  name: 'Tasty Treat Gallery',
                  tags: 'Pasta - Healthy - Pizza - Drinks',
                  rating: '4.9',
                  deliveryFee: 'Free',
                  deliveryTime: '15 min',
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
