import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_fonts.dart';

abstract class TextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle body = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle captionB = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,  
  );
}
