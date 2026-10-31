import 'package:flutter/material.dart';
import '../../../constant/images.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFF022C22),
          width: 1,
        ),
      ),
      child: ClipOval(
        child: Image.asset(
          AppImages.profile,
          width: 44,
          height: 44,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}