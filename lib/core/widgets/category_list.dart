import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatelessWidget {
  final List<String> categories;
  final Function(String category)? onCategoryTap;

  const CategoryList({
    super.key,
    required this.categories,
    this.onCategoryTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160, // Adjusted height to accommodate 122px image + text + spacing
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isLast = index == categories.length - 1;
          return Padding(
            padding: EdgeInsets.only(right: isLast ? 0 : 16.0),
            child: GestureDetector(
              onTap: () => onCategoryTap?.call(categories[index]),
              child: Column(
                children: [
                  // Image container
                  Container(
                    width: 122,
                    height: 122,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24), // Outer radius as per design
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 96,
                        height: 81,
                        decoration: BoxDecoration(
                          color: const Color(0xFF98A8B8), // Same grey placeholder color as RestaurantCard
                          borderRadius: BorderRadius.circular(12), // Inner radius
                        ),
                        // Inside here would be the actual product image.
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Category Text
                  Text(
                    categories[index],
                    style: GoogleFonts.sen(
                      color: const Color(0xFF32343E),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
