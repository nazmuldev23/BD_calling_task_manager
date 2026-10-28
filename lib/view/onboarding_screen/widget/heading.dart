import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
   final String title;

  const Heading( {super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 26,
        width: 500,
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: GoogleFonts.poppins(

            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF111827),
            letterSpacing: -0.48,
          ),
        ),
    );
  }
}
