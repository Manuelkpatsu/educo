import 'package:educo/theme/custom_color.dart';
import 'package:educo/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        splashColor: CustomColor.primary600Color.withOpacity(0.1),
        highlightColor: CustomColor.primary600Color.withOpacity(0.1),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Text(
            'Forgot Password?',
            style: CustomTextStyle.textMedium.copyWith(color: CustomColor.primary600Color),
          ),
        ),
      ),
    );
  }
}
