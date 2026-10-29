import 'package:flutter/material.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_description.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/otp_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/label_text.dart';

import 'new_password_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  static const String name = '/otp-screen';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  SizedBox(height: 250),
                  AuthHeading(text: AuthText.otpHeading),
                  AuthDescription(text: AuthText.otpDescription),
                  OtpTextField(),
                  SizedBox(height: 50),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                        child: AuthButton(
                          text: 'Confirm', onTap: () {Navigator.pushNamed(context, NewPasswordScreen.name);},)
                    )
                )
                ],
              ),
            ),
          )),
    );
  }
}
