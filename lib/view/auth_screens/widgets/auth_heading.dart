import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
   final String text;

  const AuthHeading( {super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 37,
        width: 358,
        child: Text(
          textAlign: TextAlign.start,
          text,
          style: GoogleFonts.poppins(

            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Color(0xFF111827),
          ),
        ),
    );
  }
}
