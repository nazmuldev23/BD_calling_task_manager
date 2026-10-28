import 'package:flutter/material.dart';

import '../../auth_screens/login_screen.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, LoginScreen.name);
      },
      child: Text(
        'Skip',
        style: TextStyle(color: Color(0xFF84C000), fontSize: 16),
      ),
    );
  }
}