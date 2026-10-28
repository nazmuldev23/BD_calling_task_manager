import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/colors.dart';

class OnboardingButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const OnboardingButton({
    super.key, required this.text, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358,
      height: 44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),

        onPressed: onTap,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: GoogleFonts.poppins(fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward_ios,color: Colors.white,size: 14,)
            ],
          ),
        ),
      ),
    );
  }
}