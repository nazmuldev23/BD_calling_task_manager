import 'package:flutter/material.dart';

import '../widget/profile_avatar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String name = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ProfileAvatar(),
          ],
        ),
      ),
    );
  }
}
