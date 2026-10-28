import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
   final String title;

  const Description( {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 299,
        height: 48,
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: GoogleFonts.poppins(

            fontSize: 12,
            color: Color(0xFF6B7280),
            letterSpacing: -0.48,
            height: 1.36
          ),
        ),
    );
  }
}
