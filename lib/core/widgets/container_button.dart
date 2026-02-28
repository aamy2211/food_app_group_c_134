import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.child,
    this.height = 45,
    this.width = 45,
    this.radius = 50,
  });
  final Color color;
  final Widget child;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: child,
      ),
    );
  }
}
