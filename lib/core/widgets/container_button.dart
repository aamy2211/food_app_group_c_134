import 'package:flutter/material.dart';
import 'package:food_app/core/styles/app_colors.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.color,
    required this.ontap, 
    required this.child,
  });
  final Color color;
  final Widget child;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap;
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: child,
      ),
    );
  }
}
