import 'package:educo/screen/widget/custom_button.dart';
import 'package:educo/screen/widget/custom_text_button.dart';
import 'package:flutter/material.dart';

import 'widget/check_email_image.dart';
import 'widget/check_email_text.dart';
import 'widget/no_email_info_text.dart';
import 'widget/password_recover_text.dart';

class CheckEmailScreen extends StatelessWidget {
  static const routeName = '/check_email';

  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const CheckEmailText(),
              const SizedBox(height: 20),
              const PasswordRecoverText(),
              const SizedBox(height: 60),
              const CheckEmailImage(),
              const SizedBox(height: 60),
              CustomButton(onPressed: () {}, widget: const Text('Reset password')),
              const SizedBox(height: 10),
              CustomTextButton(
                onPressed: () => Navigator.of(context).pop(),
                action: 'Will do it later',
              ),
              const SizedBox(height: 50),
              const NoEmailInfoText(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
