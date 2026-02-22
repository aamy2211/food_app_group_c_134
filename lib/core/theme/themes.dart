import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppThemes{

      static ThemeData get lightThemes =>  ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: AppColors.primary,
          textTheme: GoogleFonts.senTextTheme(),

        );
  
}