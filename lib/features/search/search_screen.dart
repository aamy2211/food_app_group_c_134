import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/features/search/widgets/PopularFoodList/popular_food_list.dart';
import 'package:food_app/features/search/widgets/RecentKeywordsList/recent_keywords_list.dart';
import 'package:food_app/features/search/widgets/SuggestedRestaurantsList/suggested_restaurants_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, top: 30),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.ingridents,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset(AppIcons.back),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 30),
                    child: Text("Search", style: TextStyle(fontSize: 17)),
                  ),
                  SizedBox(width: 125),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.secondary,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppIcons.onion),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.primary,
                          ),
                          child: Center(
                            child: Text(
                              "2",
                              style: TextStyle(color: AppColors.greyLite),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: CustomTextFormField(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(
                      AppIcons.search,
                      colorFilter: ColorFilter.mode(
                        AppColors.describtion,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  suffix: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(AppIcons.cross),
                  ),
                  hintText: 'search',
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Recent Keywords",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              RecentKeywordsList(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Suggested Restaurants",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),

              SuggestedRestaurantsList(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Popular Fast food",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              PopularFoodList(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.suffix,
    required this.hintText,
    this.readOnly = false,
    this.onTap,
  });
  final Widget? prefixIcon;
  final Widget? suffix;
  final String hintText;
  final bool readOnly;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        readOnly: readOnly,
        decoration: InputDecoration(
          fillColor: AppColors.ingridents,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,

            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: prefixIcon,
          suffix: suffix,
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.describtion),
        ),
        onTap: onTap,
      ),
    );
  }
}

void pushTo(BuildContext context, Widget view) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => view));
}
