import 'package:flutter/material.dart';
import 'package:task_manager/constant/colors.dart';
import 'package:task_manager/constant/images.dart';
import 'package:task_manager/view/onboarding_screen/widget/description.dart';
import 'package:task_manager/view/onboarding_screen/widget/heading.dart';
import 'package:task_manager/view/onboarding_screen/widget/onboarding_button.dart';
import 'package:task_manager/view/onboarding_screen/widget/skip_button.dart';

import '../../constant/strings.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  static const String name = '/onboarding-2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //app bar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [SkipButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              //onboarding image
              Image.asset(
                AppImages.onboarding2,
                height: 280,
                width: 280,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 50),
              //onboarding heading
              Heading(title: OnboardingText.onboardingHeadingText2),
              SizedBox(height: 10),
              //onboarding description
              Description(title: OnboardingText.onboardingDescriptionText2),
              SizedBox(height: 50),
              //indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  final bool isActive = index == 0;

                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 6,
                    width: isActive ? 28 : 6,
                    decoration: BoxDecoration(
                      color: isActive
                          ? AppColors.primaryColor
                          : AppColors.indicatorColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),
              SizedBox(height: 250),
              //button
              OnboardingButton(text: "Next", onTap: (){})
            ],
          ),
        ),
      ),
    );
  }
}

