import 'package:flutter/material.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/core/widgets/custom_text_field.dart';
import 'package:food_app/features/cart/screens/payment_screen.dart';
import 'package:food_app/features/cart/widgets/cart_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 20,
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColors.lightGrey, // خلفية بيضاء
                                borderRadius: BorderRadius.circular(
                                  50,
                                ), // زوايا دائرية
                              ),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: AppColors.white,
                                ), // أيقونة العودة باللون الأساسي
                                onPressed: () {
                                  pop(context);
                                },
                              ),
                            ),
                            Text(
                              'Cart',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          child: Text(
                            'DONE',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.green,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    ProductVerticalCard(
                      title: 'Pizza Calzone\n European',
                      price: '52.33',
                      size: '14',
                    ),
                    SizedBox(height: 30),
                    ProductVerticalCard(
                      title: 'Pizza Calzone\n European',
                      price: '32.33',
                      size: '16',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 320,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  color: AppColors.white, // خلفية بيضاء
                  borderRadius: BorderRadius.circular(30), // زوايا دائرية
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DELIVERY ADDRESS',
                          style: TextStyles.captionB.copyWith(
                            color: AppColors.imageBackground,
                          ),
                        ),
                        Text(
                          'EDIT',
                          style: TextStyles.caption.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),

                    CustomTextField(
                      label: '',
                      hint: 'Enter your delivery address',
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              'TOTAL :',
                              style: TextStyles.captionB.copyWith(
                                color: AppColors.imageBackground,
                              ),
                            ),
                            SizedBox(width: 8),
                          ],
                        ),
                        Text(
                          '\$84.66',
                          style: TextStyles.body.copyWith(
                            color: AppColors.secondary,
                          ),
                        ),
                        SizedBox(width: 118),
                        TextButton(
                          child: Row(
                            children: [
                              Text(
                                'Breakdown',
                                style: TextStyles.caption.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: AppColors.imageBackground,
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      text: 'CHECK OUT',
                      onPressed: () {
                        pushTo(context, PaymentScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
