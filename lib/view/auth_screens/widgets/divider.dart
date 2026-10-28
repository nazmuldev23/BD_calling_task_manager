
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(
            width: 161,
            child: Divider(
              color: Color(0xFF64748B),
              height: 1.5,
              thickness: 1,
            ),
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'OR',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color(0xFF0A0E23),
                  fontWeight: FontWeight.w600
                ),
              ),
          ),
          SizedBox(
            width: 161,
            child: Divider(
              color: Color(0xFF64748B),
              height: 1.5,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
