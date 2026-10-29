import 'package:flutter/material.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_description.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/divider.dart';
import 'package:task_manager/view/auth_screens/widgets/password_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/remeber_widget.dart';
import 'package:task_manager/view/auth_screens/widgets/sign_up_button.dart';
import 'package:task_manager/view/auth_screens/widgets/text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/textfield_heading.dart';

import '../../constant/small_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up-screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                SizedBox(height: 50),
                AuthHeading(text: AuthText.sinUpHeading),
                AuthDescription(text: AuthText.sinUpDescription),
                TextFieldHeading(text: 'First Name'),
                AuthTextField(hint: AuthText.fastNameHint),
                TextFieldHeading(text: 'Last Name'),
                AuthTextField(hint: AuthText.lastNameHint),
                TextFieldHeading(text: 'Email Address'),
                AuthTextField(hint: AuthText.emailHinText),
                TextFieldHeading(text: 'Address'),
                AuthTextField(hint: AuthText.addressHint),
                TextFieldHeading(text: 'PassWord'),
                PasswordTextField(),
                TextFieldHeading(text: 'Confirm password'),
                PasswordTextField(),
                RememberWidget(
                  text: 'I agree to the Terms & Conditions and Privacy Policy.',
                ),
                OrDivider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SmallText(text: 'Don’t have an account?'),
                    SizedBox(width: 4),
                    SignUpButton(text: 'Log In'),
                  ],
                ),
                Center(
                    child: SizedBox(
                      width: double.infinity,
                        child: AuthButton(
                          text: 'Continue', onTap: () {},)
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
