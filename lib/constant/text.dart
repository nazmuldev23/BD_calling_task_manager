
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;

  const SmallText({
    super.key,
    required this.text,
    required this.fontsize,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: fontsize,
        color: color,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  final String text;
  const MediumText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF000000),
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  final String text;
  const DescriptionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 12,
        color: const Color(0xFF6B7280),
        letterSpacing: -0.48,
        height: 1.36,
      ),
    );
  }
}

