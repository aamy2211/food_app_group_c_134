import 'package:flutter/material.dart';

Container buildKeywordChip() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.white,
      boxShadow: [BoxShadow(color: Color(0xffEDEDED), spreadRadius: 2)],
    ),
    margin: const EdgeInsets.all(5),
    child: Center(child: Text("Burger")),
  );
}
