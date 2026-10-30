import 'package:flutter/material.dart';
import '../bottom_nav_bar/custom_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  static const String name = '/main-screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    //screens
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: CustomBottomNavbar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
    );
  }
}
