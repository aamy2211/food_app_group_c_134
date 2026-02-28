import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/utils/app_icons.dart';
// import 'package:food_app/core/styles/app_colors.dart';
import 'package:food_app/core/widgets/custom_button.dart';
import 'package:food_app/core/utils/app_images.dart';
import 'package:food_app/core/widgets/custom_text_field.dart';
import 'package:food_app/core/widgets/field_label.dart';
import 'package:food_app/core/widgets/search_field.dart';
import 'package:food_app/features/address/widgets/address_selector.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  AppIcons.mapicon,
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: CircleAvatar(
                    backgroundColor: AppColors.dark,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 18,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FieldLabel(label: "ADDRESS"),
                  SearchField(
                    hintText: "3235 Royal Ln. Mesa, New Jersey 34567",
                    prefixIcon: Image.asset(AppImages.location),
                  ),

                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FieldLabel(label: "STREET"),
                            const CustomTextField(hint: "Hason Nagar"),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FieldLabel(label: "POST CODE"),
                            const CustomTextField(hint: "34567"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),
                  const FieldLabel(label: "APPARTMENT"),
                  const CustomTextField(hint: "345"),

                  const SizedBox(height: 20),
                  const FieldLabel(label: "LABEL AS"),
                  const AddressSelector(),

                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      text: "SAVE LOCATION",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
