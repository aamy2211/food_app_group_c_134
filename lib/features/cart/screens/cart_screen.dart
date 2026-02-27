import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(25.w, 50.h, 25.w, 0.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 45.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: AppColors.white,
                                size: 18.sp,
                              ),
                              onPressed: () {
                                pop(context);
                              },
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Text(
                            'Cart',
                            style: TextStyles.body.copyWith(
                              color: AppColors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        child: Text(
                          'DONE',
                          style: TextStyles.caption.copyWith(
                            decoration: TextDecoration.underline,
                            color: AppColors.green,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  const ProductVerticalCard(
                    title: 'Pizza Calzone\n European',
                    price: '52.33',
                    size: '14',
                  ),
                  SizedBox(height: 30.h),
                  const ProductVerticalCard(
                    title: 'Pizza Calzone\n European',
                    price: '32.33',
                    size: '16',
                  ),
                  SizedBox(height: 350.h), // Space for bottom sheet
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 320.h,
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
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
                  SizedBox(height: 10.h),
                  const CustomTextField(
                    label: '',
                    hint: 'Enter your delivery address',
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Text(
                        'TOTAL :',
                        style: TextStyles.captionB.copyWith(
                          color: AppColors.imageBackground,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '\$84.66',
                        style: TextStyles.body.copyWith(
                          color: AppColors.secondary,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        child: Row(
                          children: [
                            Text(
                              'Breakdown',
                              style: TextStyles.caption.copyWith(
                                color: AppColors.primary,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12.sp,
                              color: AppColors.imageBackground,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    text: 'CHECK OUT',
                    onPressed: () {
                      pushTo(context, const PaymentScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
