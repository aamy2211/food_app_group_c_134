import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hint;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscured;

  @override
  void initState() {
    super.initState();
    _obscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeSuffixIcon = widget.suffixIcon;

    if (widget.obscureText) {
      activeSuffixIcon = IconButton(
        icon: SvgPicture.asset(
          _obscured ? 'assets/icons/unseen.svg' : 'assets/icons/eye.svg',
          width: 24,
          height: 24,
        ),
        onPressed: () {
          setState(() {
            _obscured = !_obscured;
          });
        },
      );
    } else if (activeSuffixIcon != null) {
      activeSuffixIcon = Padding(
        padding: const EdgeInsets.all(12.0),
        child: activeSuffixIcon,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label.toUpperCase(),
          style: GoogleFonts.sen(
            color: const Color(0xFF32343E), // Dark text for label
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: _obscured,
          keyboardType: widget.keyboardType,
          style: GoogleFonts.sen(
            color: Colors.black, // Dark text for input
            fontSize: 16,
          ),
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: GoogleFonts.sen(
              color: const Color(0xFFA0A5BA), // Grey hint
              fontSize: 14,
            ),
            suffixIcon: activeSuffixIcon,
            filled: true,
            fillColor: const Color(0xFFF0F5FA), // Light grey field background
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
          ),
        ),
      ],
    );
  }
}
