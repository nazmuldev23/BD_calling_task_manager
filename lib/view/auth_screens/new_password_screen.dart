import 'package:flutter/material.dart';
import 'package:task_manager/view/auth_screens/string/auth_strings.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_button.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_description.dart';
import 'package:task_manager/view/auth_screens/widgets/auth_heading.dart';
import 'package:task_manager/view/auth_screens/widgets/label_text.dart';
import 'package:task_manager/view/auth_screens/widgets/password_text_field.dart';
import 'package:task_manager/view/auth_screens/widgets/text_field.dart';
import 'login_screen.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});
  static const String name = '/new-password-screen';

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                AuthHeading(text: AuthText.newPasswordHeading),
                AuthDescription(text: AuthText.newPasswordDescription),
                LabelText(text: 'New Password'),
                AuthTextField(hint: AuthText.emailHinText,),
                LabelText(text: 'New Confirm Password'),
                PasswordTextField(),
                Center(
                    child: SizedBox(
                      width: double.infinity,
                        child: AuthButton(
                          text: 'Continue', onTap: () {Navigator.pushNamed(context, LoginScreen.name);},)
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
