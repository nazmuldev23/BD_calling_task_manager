import 'package:flutter/material.dart';
import 'package:task_manager/view/auth_screens/login_screen.dart';
import 'package:task_manager/view/auth_screens/new_password_screen.dart';
import 'package:task_manager/view/auth_screens/otp_screen.dart';
import 'package:task_manager/view/auth_screens/sign_up_screen.dart';
import 'package:task_manager/view/auth_screens/verify_screen.dart';
import 'package:task_manager/view/main_screen/main_screen.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_1.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_2.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_3.dart';
import 'package:task_manager/view/splash_view/splash_screen.dart';

import 'constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        //app bar theme
        appBarTheme: AppBarThemeData(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        //Scaffold background color
        scaffoldBackgroundColor: Colors.white,
        //elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          ),
        ),
      ),
      initialRoute: SplashScreen.name,
      home: SplashScreen(),
      routes: {
        SplashScreen.name: (context) => const SplashScreen(),
        Onboarding1.name: (context) => const Onboarding1(),
        Onboarding2.name: (context) => const Onboarding2(),
        Onboarding3.name: (context) => const Onboarding3(),
        LoginScreen.name: (context) => const LoginScreen(),
        SignUpScreen.name: (context) => const SignUpScreen(),
        VerifyScreen.name: (context) => const VerifyScreen(),
        OtpScreen.name: (context) => const OtpScreen(),
        NewPasswordScreen.name: (context) => const NewPasswordScreen(),
        MainScreen.name: (context) => const MainScreen(),
      },
    );
  }
}
