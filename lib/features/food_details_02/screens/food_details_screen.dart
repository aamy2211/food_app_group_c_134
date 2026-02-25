import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/container_button.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/cart/screens/cart_screen.dart';
import 'package:food_app/features/food_details_02/widgets/ingridents.dart';
import 'package:food_app/features/food_details_02/widgets/product_atrributes.dart';
import 'package:food_app/features/food_details_02/widgets/product_counter.dart';
import 'package:food_app/features/food_details_02/widgets/radio_button.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.imageBackground,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.vertical(
                            bottom: Radius.circular(30),
                          ),
                          child: Image.asset(AppImages.picture1),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomBackButton(backgroundColor: AppColors.greyLite),
                        ContainerButton(
                          color: AppColors.greyLite,
                          child: Icon(Icons.favorite, color: AppColors.primary),
                          ontap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Burger Bistro', style: TextStyles.body),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/restaurant_logo.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(width: 4),
                        Text('Rose Garden', style: TextStyles.caption),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      spacing: 60,
                      children: [
                        ProductAtrributes(icon: AppIcons.star, text: '4.7'),
                        ProductAtrributes(icon: AppIcons.car, text: 'Free'),
                        ProductAtrributes(icon: AppIcons.clock, text: '20 min'),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
                      style: TextStyles.captionB.copyWith(
                        color: AppColors.describtion,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          'SIZE: ',
                          style: TextStyles.captionB.copyWith(
                            color: AppColors.describtion,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizeSelector(),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text('INGRIDENTS'),
                    SizedBox(height: 30),
                    Row(
                      spacing: 33,
                      children: [
                        Ingridents(icon: AppIcons.salt),
                        Ingridents(icon: AppIcons.chicken),
                        Ingridents(icon: AppIcons.onion),
                        Ingridents(icon: AppIcons.thom),
                        Ingridents(icon: AppIcons.papper),
                      ],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        height: 200,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 209, 212, 220),
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$32', style: TextStyles.title),
                ProductCounter(),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                pushTo(context, CartScreen());
              },
              text: 'ADD TO CART',
            ),
          ],
        ),
      ),
    );
  }
}
