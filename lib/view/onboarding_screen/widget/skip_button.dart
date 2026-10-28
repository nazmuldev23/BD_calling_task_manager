import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Skip',
        style: TextStyle(color: Color(0xFF84C000), fontSize: 16),
      ),
    );
  }
}