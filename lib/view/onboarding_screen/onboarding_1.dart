import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  static const String name = '/onboarding-1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
                'Skip',
                style: TextStyle(
                  color: Color(0xFF84C000),
                  fontSize: 16,
                )
            ),
          ),
        ],
      ),
    );
  }
}
