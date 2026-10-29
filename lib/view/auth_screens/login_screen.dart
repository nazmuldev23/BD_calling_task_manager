import 'package:flutter/material.dart';
import 'package:task_manager/constant/small_text.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/divider.dart';
import 'package:task_manager/view/auth_screens/widgets/text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_description.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/password_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/remeber_widget.dart';
import 'package:task_manager/view/auth_screens/widgets/sign_up_button.dart';
import 'package:task_manager/view/auth_screens/widgets/textfield_heading.dart';


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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200),
                AuthHeading(text: AuthText.loginHeading),
                SizedBox(height: 10),
                AuthDescription(text: AuthText.loginDescription),
                SizedBox(height: 10),
                TextFieldHeading(text: 'Email Address'),
                AuthTextField(hint: AuthText.emailHinText,),
                TextFieldHeading(text: 'Password'),
                PasswordTextField(),
                RememberWidget(text: 'Remember me'),
                SizedBox(height: 10),
                OrDivider(),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SmallText(text: 'Don’t have an account?'),
                    SizedBox(width: 4),
                    SignUpButton(text: 'Sign Up',)
                  ],
                ),
                SizedBox(height: 10),
                Center(
                    child: SizedBox(
                      width: double.infinity,
                        child: AuthButton(
                          text: 'Log In', onTap: () {},)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
