import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/colors.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SignUpButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: AppColors.primaryColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
