import 'package:flutter/material.dart';
import 'package:food_app/core/styles/text_styles.dart';
import 'package:group_button/group_button.dart';

class SizeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GroupButton(
      // 1. قائمة الخيارات
      buttons: ["10\"", "14\"", "16\""],

      // 2. إعدادات الاختيار (Single Selection)
      options: GroupButtonOptions(
        selectedColor: Colors.orange, // لون الزر المختار
        unselectedColor: Colors.grey[200], // لون الزر غير المختار
        selectedTextStyle: TextStyles.captionB,
        unselectedTextStyle: const TextStyle(color: Colors.black),

        // 3. التحكم في الشكل (دائرة)
        borderRadius: BorderRadius.circular(25), // نص قطر الدائرة (نص العرض)
        buttonHeight: 50, // بدلاً من fixedSize
        buttonWidth:
            50, // بدلاً من fixedSize // حجم ثابت عشان تطلع دايرة مظبوطة
        spacing: 10, // المسافة بين الزراير
      ),

      // 4. الأكشن لما يدوس على حاجة
      onSelected: (value, index, isSelected) {
        print('المقاس المختار هو: $value');
      },
    );
  }
}
