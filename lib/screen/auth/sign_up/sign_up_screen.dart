import 'package:educo/screen/auth/login/login_screen.dart';
import 'package:educo/screen/auth/sign_up_form/sign_up_form_screen.dart';
import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/custom_icon_button.dart';
import 'package:educo/screen/widget/custom_text_button.dart';
import 'package:educo/screen/widget/or_text.dart';
import 'package:educo/screen/widget/welcome_text.dart';
import 'package:educo/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'widget/have_account_text.dart';
import 'widget/terms_and_conditions_text.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign_up';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const WelcomeText(message: "Welcome!\nSign up to continue!"),
              const SizedBox(height: 60),
              CustomIconButton(
                onPressed: () {},
                action: 'Sign Up with Google',
                icon: Image.asset(
                  'assets/images/google.png',
                  height: 28,
                  width: 28,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              CustomIconButton(
                onPressed: () {},
                action: 'Sign Up with Facebook',
                icon: Image.asset(
                  'assets/images/facebook.png',
                  height: 28,
                  width: 28,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              const OrText(),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () => Navigator.of(context).pushNamed(SignUpFormScreen.routeName),
                foregroundColor: CustomColor.grey900Color,
                backgroundColor: CustomColor.grey50Color,
                widget: const Text('Sign up with email'),
              ),
              const SizedBox(height: 20),
              const TermsAndConditionsText(),
              const SizedBox(height: 70),
              const HaveAccountText(),
              const SizedBox(height: 10),
              CustomTextButton(
                onPressed: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
                action: 'Sign in',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
