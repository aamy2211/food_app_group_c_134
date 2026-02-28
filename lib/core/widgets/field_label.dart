import 'package:flutter/material.dart';
import 'package:food_app/core/styles/text_styles.dart';

class FieldLabel extends StatelessWidget {
  final String label;
  const FieldLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(label, style: TextStyles.captionB),
    );
  }
}
