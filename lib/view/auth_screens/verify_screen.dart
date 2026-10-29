import 'package:flutter/material.dart';
import 'package:task_manager/view/auth_screens/otp_screen.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_description.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/label_text.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});
  static const String name = '/verify-screen';

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
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
                  AuthHeading(text: AuthText.verifyHeading),
                  AuthDescription(text: AuthText.verifyDescription),
                  LabelText(text: 'Email Address'),
                  AuthTextField(hint: AuthText.emailHinText),
                  SizedBox(height: 50),
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                        child: AuthButton(
                          text: 'Send', onTap: () {Navigator.pushNamed(context, OtpScreen.name);},)
                    )
                )
                ],
              ),
            ),
          )),
    );
  }
}
