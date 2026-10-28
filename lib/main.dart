import 'package:flutter/material.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_1.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_2.dart';
import 'package:task_manager/view/onboarding_screen/onboarding_3.dart';
import 'package:task_manager/view/splash_view/splash_screen.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: SplashScreen.name,
      home: SplashScreen(),
      routes: {
        SplashScreen.name : (context) => const SplashScreen(),
        Onboarding1.name: (context) => const Onboarding1(),
        Onboarding2.name: (context) => const Onboarding2(),
        Onboarding3.name: (context) => const Onboarding3(),

    },
    );
  }
}


