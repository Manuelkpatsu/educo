import 'package:educo/screen/auth/login/login_screen.dart';
import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/password_input_field.dart';
import 'package:educo/utils/validator.dart';
import 'package:flutter/material.dart';

import 'widget/reset_password_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const routeName = '/reset_password';

  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> _resetPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _obscurePasswordText = true;
  bool _obscureConfirmPasswordText = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _resetPasswordFormKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const ResetPasswordText(),
              const SizedBox(height: 50),
              PasswordInputField(
                controller: _passwordController,
                hintText: 'Enter New Password',
                obscureText: _obscurePasswordText,
                inputAction: TextInputAction.next,
                validator: Validator.password,
                toggle: () {
                  setState(() => _obscurePasswordText = !_obscurePasswordText);
                },
              ),
              const SizedBox(height: 20),
              PasswordInputField(
                controller: _confirmPasswordController,
                hintText: 'Confirm New Password',
                obscureText: _obscureConfirmPasswordText,
                inputAction: TextInputAction.done,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Confirm password is required';
                  }

                  if (_passwordController.text.trim() != _confirmPasswordController.text.trim()) {
                    return "Passwords do not match";
                  }

                  return null;
                },
                toggle: () {
                  setState(() => _obscureConfirmPasswordText = !_obscureConfirmPasswordText);
                },
              ),
              const SizedBox(height: 50),
              CustomButton(
                onPressed: () {
                  if (_resetPasswordFormKey.currentState!.validate()) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      LoginScreen.routeName,
                      (route) => false,
                    );
                  }
                },
                widget: const Text('Reset'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
