import 'package:flutter/material.dart';

import '../../../constant/text.dart';
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
          spacing: 10,
          children: [
            ProfileAvatar(),
            Column(
              spacing: 2.5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MediumText(text: 'Hello Mojahid'),
                SmallText(
                  text: 'Welcome to Task Manager',
                  fontsize: 12,
                  color: Color(0xFF000000),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
