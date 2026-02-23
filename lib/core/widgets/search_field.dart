import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/core/utils/app_icons.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final VoidCallback? onTap;
  final bool readOnly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const SearchField({
    super.key,
    this.hintText = 'Search dishes, restaurants',
    this.onTap,
    this.readOnly = false,
    this.controller,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      style: GoogleFonts.sen(color: const Color(0xFF32343E), fontSize: 14),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.sen(
          color: const Color(0xFFA0A5BA),
          fontSize: 14,
        ),
        filled: true,
        fillColor: const Color(0xFFF0F5FA),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16, right: 12),
          child:
              prefixIcon ??
              SvgPicture.asset(
                AppIcons
                    .search, // Replace with your standard search icon if needed
                width: 20,
                height: 20,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF7E8CA0),
                  BlendMode.srcIn,
                ),
              ),
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 48,
          minHeight: 20,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
