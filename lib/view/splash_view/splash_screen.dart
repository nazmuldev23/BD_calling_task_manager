import 'package:flutter/material.dart';
import 'package:task_manager/constant/colors.dart';
import 'package:task_manager/constant/images.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;

      Navigator.pushReplacementNamed(context, Onboarding1.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
          child: Image.asset(
              AppImages.logo,
              height: 200,
              width: 200,
          )
      ),
    );
  }
}
