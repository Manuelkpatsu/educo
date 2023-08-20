import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/text_input_field.dart';
import 'package:educo/utils/validator.dart';
import 'package:flutter/material.dart';

import 'widget/enter_email_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _forgotPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
          key: _forgotPasswordFormKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const EnterEmailText(),
              const SizedBox(height: 50),
              TextInputField(
                controller: _emailController,
                hintText: 'Email Address',
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.done,
                validator: Validator.email,
              ),
              const SizedBox(height: 50),
              CustomButton(
                onPressed: () {
                  if (_forgotPasswordFormKey.currentState!.validate()) {}
                },
                widget: const Text('Send Email'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
