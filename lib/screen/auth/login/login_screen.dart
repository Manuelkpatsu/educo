import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/custom_icon_button.dart';
import 'package:educo/screen/widget/custom_text_button.dart';
import 'package:educo/screen/widget/or_text.dart';
import 'package:educo/screen/widget/password_input_field.dart';
import 'package:educo/screen/widget/text_input_field.dart';
import 'package:educo/screen/widget/welcome_text.dart';
import 'package:educo/utils/validator.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                const SizedBox(height: 60),
                CustomButton(
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {}
                  },
                  widget: const Text('Log in'),
                ),
                const SizedBox(height: 10),
                CustomTextButton(
                  onPressed: () {},
                  action: 'Forgot password',
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
