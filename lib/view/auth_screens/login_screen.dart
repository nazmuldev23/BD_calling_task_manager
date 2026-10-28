import 'package:flutter/material.dart';
import 'package:task_manager/constant/small_text.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/divider.dart';
import 'package:task_manager/view/auth_screens/widgets/email_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/login_description.dart';
import 'package:task_manager/view/auth_screens/widgets/login_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/password_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/remeber_password.dart';
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
                LoginHeading(text: AuthText.loginHeading),
                SizedBox(height: 10),
                LoginDescription(text: AuthText.loginDescription),
                SizedBox(height: 10),
                TextFieldHeading(text: 'Email Address'),
                EmailTextField(),
                TextFieldHeading(text: 'Password'),
                PasswordTextField(),
                RememberPassword(),
                SizedBox(height: 10),
                OrDivider(),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SmallText(text: 'Don’t have an account?'),
                    SizedBox(width: 4),
                    SignUpButton()
                  ],
                ),
                SizedBox(height: 10),
                AuthButton(text: 'Log In', onTap: () {},)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
