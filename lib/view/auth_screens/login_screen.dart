import 'package:flutter/material.dart';
import 'package:task_manager/constant/text.dart';
import 'package:task_manager/view/auth_screens/sign_up_screen.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/divider.dart';
import 'package:task_manager/view/auth_screens/widgets/text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_description.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/password_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/chack_box.dart';
import 'package:task_manager/view/auth_screens/widgets/sign_up_button.dart';
import 'package:task_manager/view/auth_screens/widgets/label_text.dart';

import '../main_screen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String name = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200),
                AuthHeading(text: AuthText.loginHeading),
                AuthDescription(text: AuthText.loginDescription),
                LabelText(text: 'Email Address'),
                AuthTextField(hint: AuthText.emailHinText),
                LabelText(text: 'Password'),
                PasswordTextField(),
                ChackBox(text: 'Remember me'),
                OrDivider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    DescriptionText(text: 'Don’t have an account?'),
                    SizedBox(width: 4),
                    SignUpButton(
                      text: 'Sign Up',
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.name);
                      },
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: AuthButton(
                      text: 'Log In',
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          MainScreen.name,
                          (route) => false,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
