import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/icon_text.dart';

class RestaurantCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String tags;
  final String rating;
  final String deliveryFee;
  final String deliveryTime;
  final VoidCallback? onTap;

  const RestaurantCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.tags,
    required this.rating,
    required this.deliveryFee,
    required this.deliveryTime,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Large Restaurant Image
          Container(
            height: 140,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF98A8B8), // Grey placeholder for now
              borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.sen(
                    color: const Color(0xFF32343E),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  tags,
                  style: GoogleFonts.sen(
                    color: const Color(0xFFA0A5BA),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    IconText(
                      iconPath: AppImages.star,
                      text: rating,
                      textStyle: GoogleFonts.sen(
                        color: const Color(0xFF181C2E),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 24),
                    IconText(
                      iconPath: AppImages.delivery,
                      text: deliveryFee,
                      textStyle: GoogleFonts.sen(
                        color: const Color(0xFF181C2E),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 24),
                    IconText(
                      iconPath: AppImages.clock,
                      text: deliveryTime,
                      textStyle: GoogleFonts.sen(
                        color: const Color(0xFF181C2E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
   );
  }
}
