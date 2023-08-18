import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/password_input_field.dart';
import 'package:educo/screen/widget/text_input_field.dart';
import 'package:educo/utils/validator.dart';
import 'package:flutter/material.dart';

import 'widget/enter_details_text.dart';

class SignUpFormScreen extends StatefulWidget {
  static const routeName = '/sign_up_form';

  const SignUpFormScreen({super.key});

  @override
  State<SignUpFormScreen> createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends State<SignUpFormScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _obscureRegisterPasswordText = true;
  bool _obscureRegisterConfirmPasswordText = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
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
          key: _registerFormKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const EnterDetailsText(),
              const SizedBox(height: 50),
              TextInputField(
                controller: _usernameController,
                hintText: 'Username',
                inputAction: TextInputAction.next,
                validator: Validator.username,
              ),
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
                obscureText: _obscureRegisterPasswordText,
                toggle: () {
                  setState(() => _obscureRegisterPasswordText = !_obscureRegisterPasswordText);
                },
                inputAction: TextInputAction.next,
                validator: Validator.password,
              ),
              const SizedBox(height: 20),
              PasswordInputField(
                controller: _confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: _obscureRegisterConfirmPasswordText,
                inputAction: TextInputAction.done,
                toggle: () {
                  setState(() =>
                      _obscureRegisterConfirmPasswordText = !_obscureRegisterConfirmPasswordText);
                },
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Confirm password is required';
                  }

                  if (_passwordController.text.trim() != _confirmPasswordController.text.trim()) {
                    return "Passwords do not match";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: () {
                  if (_registerFormKey.currentState!.validate()) {}
                },
                widget: const Text('Continue'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
