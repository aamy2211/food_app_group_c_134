import 'package:flutter/material.dart';

class ProductCounter extends StatefulWidget {
  @override
  _ProductCounterState createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int count = 1; // القيمة الابتدائية

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFF1A1D26), // لون الخلفية الغامق من الصورة
        borderRadius: BorderRadius.circular(30), // لجعل الأطراف دائرية تماماً
      ),
      child: Row(
        mainAxisSize:
            MainAxisSize.min, // عشان الكونتر ياخد مساحة على قد محتواه بس
        children: [
          // زر الناقص
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 82, 82, 82),
              ), // نفس لون الخلفية
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // لجعل الزر دائري
                ),
              ),
            ),
            onPressed: () {
              if (count > 1) setState(() => count--);
            },
            icon: Icon(Icons.remove, color: Colors.white, size: 20),
            constraints:
                BoxConstraints(), // لإزالة المساحات الإضافية حول الأيقونة
            padding: EdgeInsets.all(8),
          ),

          // الرقم
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              '$count',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // زر الزائد
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 82, 82, 82),
              ), // نفس لون الخلفية
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // لجعل الزر دائري
                ),
              ),
            ),
            onPressed: () => setState(() => count++),
            icon: Icon(Icons.add, color: Colors.white, size: 20),
            constraints: BoxConstraints(),
            padding: EdgeInsets.all(8),
          ),
        ],
      ),
    );
  }
}
