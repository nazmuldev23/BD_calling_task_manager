
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/view/auth_screens/sign_up_screen.dart';

import '../../../constant/colors.dart';

class SignUpButton extends StatelessWidget {
  final String text;
  const SignUpButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, SignUpScreen.name);
      },
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
