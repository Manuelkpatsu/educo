import 'package:educo/screen/auth/forgot_password/forgot_password_screen.dart';
import 'package:educo/screen/auth/sign_up/sign_up_screen.dart';
import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/custom_icon_button.dart';
import 'package:educo/screen/widget/custom_text_button.dart';
import 'package:educo/screen/widget/or_text.dart';
import 'package:educo/screen/widget/password_input_field.dart';
import 'package:educo/screen/widget/text_input_field.dart';
import 'package:educo/screen/widget/welcome_text.dart';
import 'package:educo/utils/validator.dart';
import 'package:flutter/material.dart';

import 'widget/forgot_password_button.dart';
import 'widget/no_account_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureLoginPasswordText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Form(
            key: _loginFormKey,
            child: Column(
              children: [
                const SizedBox(height: 40),
                const WelcomeText(message: "Welcome back!\nSign in to continue!"),
                const SizedBox(height: 60),
                CustomIconButton(
                  onPressed: () {},
                  action: 'Log in with Google',
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
                  action: 'Log in with Facebook',
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
                TextInputField(
                  controller: _emailController,
                  hintText: 'Email Address',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  validator: Validator.email,
                ),
                const SizedBox(height: 20),
                PasswordInputField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: _obscureLoginPasswordText,
                  toggle: () {
                    setState(() => _obscureLoginPasswordText = !_obscureLoginPasswordText);
                  },
                  inputAction: TextInputAction.done,
                  validator: Validator.password,
                ),
                const SizedBox(height: 15),
                ForgotPasswordButton(
                  onTap: () => Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName),
                ),
                const SizedBox(height: 50),
                CustomButton(
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {}
                  },
                  widget: const Text('Log in'),
                ),
                const SizedBox(height: 30),
                const NoAccountText(),
                const SizedBox(height: 10),
                CustomTextButton(
                  onPressed: () => Navigator.of(context).pushNamed(SignUpScreen.routeName),
                  action: 'Sign Up',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
