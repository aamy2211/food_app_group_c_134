import 'package:flutter/material.dart';
import 'package:food_app/features/search/data/product_model.dart';
import 'package:food_app/features/search/widgets/RecentKeywordsList/build_keyword_chip.dart';

class RecentKeywordsList extends StatefulWidget {
  const RecentKeywordsList({super.key});

  @override
  State<RecentKeywordsList> createState() => _RecentKeywordsListState();
}

class _RecentKeywordsListState extends State<RecentKeywordsList> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: recentKeywords.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          var model = recentKeywords[index];

          return BuildKeywordChip(
            model: model,
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
