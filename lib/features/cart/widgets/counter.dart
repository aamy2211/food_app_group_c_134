import 'package:flutter/material.dart';

class QuantityCounter extends StatefulWidget {
  const QuantityCounter({super.key});

  @override
  State<QuantityCounter> createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  int quantity = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // زرار -
          _buildButton(
            icon: Icons.remove,
            onTap: () {
              if (quantity > 1) {
                setState(() {
                  quantity--;
                });
              }
            },
          ),

          const SizedBox(width: 12),

          // الرقم
          Text(
            quantity.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(width: 12),

          // زرار +
          _buildButton(
            icon: Icons.add,
            onTap: () {
              setState(() {
                quantity++;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white24,
        ),
        child: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}