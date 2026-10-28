import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldHeading extends StatelessWidget {
   final String text;

  const TextFieldHeading( {super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: 500,
        child: Text(
          textAlign: TextAlign.start,
          text,
          style: GoogleFonts.poppins(

            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF111827),
          ),
        ),
    );
  }
}
