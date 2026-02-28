import 'package:flutter/material.dart';
import 'package:food_app/core/functions/navigations.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:food_app/core/utils/app_icons.dart';
// import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/custom_back_button.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/features/address/screens/add_address_screen.dart';
import 'package:food_app/features/address/widgets/adress_card.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomBackButton(backgroundColor: AppColors.lightGrey),
                  const SizedBox(width: 20),
                  const Text("My Address", style: TextStyles.body2),
                ],
              ),
              const SizedBox(height: 30),

              AddressCard(
                title: "HOME",
                fullAddress: "2464 Royal Ln. Mesa, New Jersey 45463",
                image: AppIcons.home,
                color: AppColors.green,
              ),
              AddressCard(
                title: "WORK",
                fullAddress: "3891 Ranchview Dr. Richardson, California 62639",
                image: AppIcons.call,
                color: AppColors.purple,
              ),

              const Spacer(),

              CustomButton(
                text: 'Add new address',
                onPressed: () {
                  pushTo(context, const AddAddressScreen());
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
