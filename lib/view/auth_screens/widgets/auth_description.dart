import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthDescription extends StatelessWidget {
   final String text;

  const AuthDescription( {super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 358,
        child: Text(
          textAlign: TextAlign.start,
          text,
          style: GoogleFonts.poppins(

            fontSize: 12,
            color: Color(0xFF6B7280),
            letterSpacing: 0.16,
            height: 1.36
          ),
        ),
    );
  }
}
