
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: const Text(
        'Sign Up',
        style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
