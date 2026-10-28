
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/colors.dart';

class RememberPassword extends StatefulWidget {
  const RememberPassword({super.key});

  @override
  State<RememberPassword> createState() =>
      _RememberPasswordState();
}

class _RememberPasswordState
    extends State<RememberPassword> {
  bool isRememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
          height: 16,
          child: Checkbox(
            value: isRememberPassword,
            activeColor: Color(0xFF22C55E),
            side: const BorderSide(
              color: Color(0xFF22C55E),
              width: 1.2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            onChanged: (value) {
              setState(() {
                isRememberPassword = value ?? false;
              });
            },
          ),
        ),
        const SizedBox(width: 8),
         Text(
          'Remember Password',
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Color(0xFF344054),
          ),
        ),
      ],
    );
  }
}
