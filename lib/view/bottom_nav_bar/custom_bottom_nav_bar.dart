import 'package:flutter/material.dart';
import 'package:task_manager/constant/colors.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: 390,
      // margin: const EdgeInsets.only(
      //   left: 15,
      //   right: 15,
      //   bottom: 0,
      // ),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 24,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Home
          _navItem(index: 0, icon: Icons.home_outlined, label: 'Home'),

          // Add Task
          _navItem(index: 1, icon: Icons.add, label: 'Add Task'),

          // Profile
          _navItem(index: 2, icon: Icons.person_outline, label: 'Profile'),
        ],
      ),
    );
  }

  Widget _navItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    bool isSelected = currentIndex == index;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: () => onTap(index),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, isSelected ? -25 : 0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  height: isSelected ? 52 : 30,
                  width: isSelected ? 52 : 30,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFFFFFFF), width: 6),
                  ),
                  child: Icon(
                    icon,
                    size: index == 1 ? 24 : 24,
                    color: isSelected ? Colors.white : const Color(0xFF000000),
                  ),
                ),
              ),
              if (!isSelected) ...[
                const SizedBox(height: 2),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
